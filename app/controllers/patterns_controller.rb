class PatternsController < ApplicationController
  def index(brand = nil)
    @brand = params[:brand]
    @brand ||= ""
  end

  def atoms(brand = nil)
    @brand = params[:brand]
    @brand ||= "global"
    @colors = []
    if @brand == "tera"
      @colors.push({:hex => "4b4f56", :label => "lightGray"})
      @colors.push({:hex => "30343b", :label => "midGray"})
      @colors.push({:hex => "1d2128", :label => "darkGray"})
      @colors.push({:hex => "0297FF", :label => "lightBlue"})
      @colors.push({:hex => "0875D1", :label => "midBlue"})
      @colors.push({:hex => "0C5AAd", :label => "darkBlue"})
      @colors.push({:hex => "dfa013", :label => "lightGold"})
      @colors.push({:hex => "b26a0c", :label => "midGold"})
      @colors.push({:hex => "613a04", :label => "darkGold"})
      @colors.push({:hex => "960909", :label => "lightRed"})
      @colors.push({:hex => "820707", :label => "midRed"})
      @colors.push({:hex => "530202", :label => "darkRed"})
      @colors.push({:hex => "1C9509", :label => "lightGreen"})
      @colors.push({:hex => "198607", :label => "midGreen"})
      @colors.push({:hex => "115f02", :label => "darkGreen"})
      @colors.push({:hex => "ff9400", :label => "lightOrange"})
      @colors.push({:hex => "c36e00", :label => "midOrange"})
      @colors.push({:hex => "663d00", :label => "darkOrange"})
      @colors.push({:hex => "68a7f6", :label => "lightBabyBlue"})
      @colors.push({:hex => "4387ed", :label => "midBabyBlue"})
      @colors.push({:hex => "1e54b9", :label => "darkBabyBlue"})
      @colors.push({:hex => "7b3aff", :label => "lightPurple"})
      @colors.push({:hex => "491bdb", :label => "midPurple"})
      @colors.push({:hex => "331180", :label => "darkPurple"})
      @colors.push({:hex => "ff6e42", :label => "lightPeach"})
      @colors.push({:hex => "bf5134", :label => "midPeach"})
      @colors.push({:hex => "803919", :label => "darkPeach"})
      @colors.push({:hex => "e83a85", :label => "lightPink"})
      @colors.push({:hex => "e82a7a", :label => "midPink"})
      @colors.push({:hex => "e21d67", :label => "darkPink"})
    elsif @brand == "zmr"
      @colors.push({:hex => "52524e", :label => "hoverGray"})
      @colors.push({:hex => "c70504", :label => "lightRed"})
      @colors.push({:hex => "611a1d", :label => "darkRed"})
    else
      puts "global colors"
      @colors.push({:hex => "000000", :label => "black"})
      @colors.push({:hex => "333333", :label => "darkGray"})
      @colors.push({:hex => "666666", :label => "midGray"})
      @colors.push({:hex => "999999", :label => "lightGray"})
      @colors.push({:hex => "BBBBBB", :label => "offWhite"})
      @colors.push({:hex => "FFFFFF", :label => "white"})
    end
    render layout: "blank"
  end
end
