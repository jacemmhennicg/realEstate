import SwiftUI

struct MainTabView: View {
    @State private var activeTab: Tab = .explore
    
    @Namespace private var animation
    @State private var tabShapePosition: CGPoint = .zero
    
    init() {
        UITabBar.appearance().isHidden = true
    }
    var body: some View {
        VStack(spacing: 0){
            TabView(selection: $activeTab){
                ExploreView()
                    .tag(Tab.explore)
                WishlistsView()
                    .tag(Tab.wishlists)
                
               ProfileView()
                    .tag(Tab.profile)
                
            }
            
            CustomTabBar()
        }
    }
    
    @ViewBuilder
    func CustomTabBar(_ tint: Color = Color("Blue"), _ inactiveTint: Color = .blue) -> some View {
        HStack(alignment: .bottom, spacing: 0) {
            ForEach(Tab.allCases, id: \.rawValue) {
                TabItem(
                    tint: tint,
                    inactiveTint: inactiveTint,
                    tab: $0,
                    animation: animation,
                    activeTab: $activeTab, position: $tabShapePosition
                )
            }
        }
        .padding(.horizontal, 15)
        .padding(.vertical, 10)
        .background(content: {
            TabShape(midpoint: tabShapePosition.x)
                .fill(.white)
                .ignoresSafeArea()
                .shadow(color: Color(.blue).opacity(0.2), radius: 5, x: 0, y: -5)
                .blur(radius: 2)
                .padding(.top, 25)
        })
        .animation(.interactiveSpring(response: 0.6,dampingFraction: 0.7, blendDuration: 0.7), value: activeTab)
    }
}

struct TabItem: View {
    var tint: Color
    var inactiveTint: Color
    var tab: Tab
    var animation: Namespace.ID
    
    @Binding var activeTab: Tab
    @Binding var position: CGPoint
    
    @State private var tabPosition: CGPoint = .zero
    
    var body: some View {
        VStack(spacing: 5){
            Image(systemName: tab.systemImage)
                .font(.title2)
                .foregroundColor(activeTab == tab ? .white : .gray )
                .frame(width: activeTab == tab ? 58 :  35, height: activeTab == tab ? 58 : 35)
                .background{
                    if activeTab == tab {
                        Circle()
                            .fill(.blue)
                            .matchedGeometryEffect(id: "ACTIVETAB", in: animation)
                    }
                }
            
            Text(tab.rawValue)
                .font(.caption)
                .foregroundColor(activeTab == tab ? .blue : .gray)
        }
        .frame(maxWidth: .infinity)
        .contentShape(Rectangle())
        .viewPosition(completion: { rect in
            tabPosition.x = rect.midX
            
            if activeTab == tab {
                position.x = rect.midX
            }
        })
        
        .onTapGesture {
            activeTab = tab
            
            withAnimation(.interactiveSpring(response: 0.6, dampingFraction: 0.7, blendDuration: 0.7)) {
                position.x = tabPosition.x
            }
        }
    }
}


#Preview {
    MainTabView()
}
