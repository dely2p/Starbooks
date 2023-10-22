//
//  HomeViewModel.swift
//  Starbooks
//
//  Created by elly on 2023/10/09.
//

import Foundation
import Combine

class HomeViewModel: ViewModelType, ObservableObject {
    
    // VC -> VM
    struct Input {
    }
    
    // VM -> VC
    struct Output {
        
    }
    
    private(set) var menuSuggestionItems: [MenuItem] = [
        MenuItem(imageUrl: "https://postfiles.pstatic.net/MjAxOTA1MDJfMjYw/MDAxNTU2NzI1MDEwMDI2.pJWu_pYUmd0718PYmJ_7TqNRlClSNtHh5DsUJVjP3lEg.k82Vrn6NC3y63eDovEeXKa6VD5cpL5P-tYZaixLpkzUg.JPEG.eodud9396/1.jpg?type=w773", title: "원피스 1"),
        MenuItem(imageUrl: "https://postfiles.pstatic.net/MjAxOTA1MDJfMTkw/MDAxNTU2NzI1MDEwMDE0.Bn8mDhB4Cbzu6XPieLpUfaFVYd0c977ia6zuU0maXjEg.xA4LwYKhOQKHvBxWydp3FELhHQO5NrJPW40p8vk25NEg.JPEG.eodud9396/2.jpg?type=w773", title: "원피스 2"),
        MenuItem(imageUrl: "https://postfiles.pstatic.net/MjAxOTA1MDJfMjA4/MDAxNTU2NzI1MDEwMDE3.211ydH8ldbdc4_L6QAoEqX56hZogC_CLYAWOq9GIai0g.PQlspaEpG8B09i3TUnFsIyQJ1Jx27n0IAh1DTVU7v9sg.JPEG.eodud9396/3.jpg?type=w773", title: "원피스 3"),
        MenuItem(imageUrl: "https://postfiles.pstatic.net/MjAxOTA1MDJfMjEg/MDAxNTU2NzI1MDEwMDIx.KDAqgBZUnK1U9DDjH5S8aI4pK4heUX3eSYIKOo6Juqkg.bFArP5k4QH6z9VLIHvW4RUb0bLoVERJVgJK1Kst87LUg.JPEG.eodud9396/4.jpg?type=w773", title: "원피스 4"),
        MenuItem(imageUrl: "https://postfiles.pstatic.net/MjAxOTA1MDJfMzcg/MDAxNTU2NzI1MDEwMDE5.wUn0OlTHqbhFnLCSGcQRtJyQoIfj-vsO3bUwcrqMUZ4g.XIcLUKcyXUPBlAFZHpolZbgYkUMSDoXttwFWcJ83ryEg.JPEG.eodud9396/5.jpg?type=w773", title: "원피스 5"),
        MenuItem(imageUrl: "https://postfiles.pstatic.net/MjAxOTA1MDJfMjYx/MDAxNTU2NzI1MDEwMDEx.nAUXd_cbgWYVVpE52nTF4nVrq0LrfYTb9iF0RZR2mTYg.af0qTfTRGh8l5Oe8Y9QVGEJe1vhtJEFmyq9zq2dF-6Ag.JPEG.eodud9396/6.jpg?type=w773", title: "원피스 6"),
    ]
    
    
    func transform(input: Input) -> Output {
        return Output()
    }
}
