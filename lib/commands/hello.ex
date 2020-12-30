defmodule Commands.Hello do
  use DoIt.Command,
    description: "Hello command line tool"

  param(:message, :string, "Message Param", allowed_values: ["World", "Universe"])

  flag(:template, :string, "Template", alias: :t, default: "Hello <%= message %>!!!")
  flag(:template_file, :string, "Template filename", alias: :f)

  def run(%{message: message}, %{template_file: template_file}, _) do
    IO.puts(EEx.eval_file(template_file, message: message))
  end

  def run(%{message: message}, %{template: template}, _) do
    IO.puts(EEx.eval_string(template, message: message))
  end

  def run(params, flags, _) do
    IO.inspect params
    IO.inspect flags
  end

end
