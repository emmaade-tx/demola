require_relative 'welcome_message'
class Menu

    def options()
        system ("cls")
        WelcomeMessage.new.menu_option
        val
    end
    def load
        loading = ""
        loader = ["L","O","A","D","I","N","G","!","!","!"]
        9.times do |i|
        loading += loader[i]
        puts loading
        sleep 0.2
    end
    Menu.new.options
    end
end
