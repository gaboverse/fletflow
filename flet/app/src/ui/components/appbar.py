import flet as ft


class AppBarComponent(ft.AppBar):
    def __init__(self):
        super().__init__()

        self.title = AppBarTitle()
        self.center_title = True
        self.bgcolor=ft.Colors.SURFACE_CONTAINER_HIGHEST

        self.actions = [ft.IconButton(ft.Icons.NOTIFICATIONS_NONE_ROUNDED)]

class AppBarTitle(ft.Text):
    def __init__(self):
        super().__init__()

        self.spans = [
            ft.TextSpan(
                text = 'my',
                style = ft.TextStyle(
                    color = '#749AD4',
                    font_family = 'Maven Pro Bold',
                ),
            ),
            ft.TextSpan(
                text = 'app',
                style = ft.TextStyle(
                    color = '#3E5373',
                    font_family = 'Maven Pro Bold',
                ),
            ),
        ]
