module ApplicationHelper
  def color_for_level(level)
    case level
    when 1
      'background-color: lightgreen;'  # Lv.1は薄い緑
    when 2
      'background-color: green;'       # Lv.2は緑
    when 3
      'background-color: darkgreen;'   # Lv.3は濃い緑
    else
      'background-color: transparent;' # レベルが選択されていない場合
    end
  end
end
