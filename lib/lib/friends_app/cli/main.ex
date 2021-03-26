defmodule FriendsApp.CLI.Main do
  alias Mix.Shell.IO, as: Shell

  def start_app do
    Shell.cmd("clear")
    welcome_message()
    Shell.prompt("Pressione ENTER para continuar...")

    start_menu_choice()
  end

  defp welcome_message do
    Shell.info("----- Friends App -----")
    Shell.info("Seja bem vindo a sua Agenda Pessoal!")
    Shell.info("----- Friends App -----")
  end

  defp start_menu_choice do
    FriendsApp.CLI.MenuChoice.start()
  end
end
