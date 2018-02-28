class CalculatorController < ApplicationController
  def index
    @a = params[:a].to_i
    @b = params[:b].to_i
    @op = params[:op].to_s

    @result = case params[:op]
                when "+" then
                  @a + @b;
                when "-" then
                  @a - @b;
                when "*" then
                  @a * @b;
                when "/" then
                  @a / @b;
                else
                 @result=" "
              end

  end

end
