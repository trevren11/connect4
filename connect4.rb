require "json"

$stdin.sync = true
$stdout.sync = true

def make_first_move
  # Get which top rows are open
  pos = 0
  @arr = Array.new
  for i in @top_row
  # puts "here #{i}"
    if i == 0
      @arr.push(pos)
    end
  pos+=1
  end
  # puts "Array size = #{@arr.size}"
  try_column
  make_move
end

def try_column
  # this will try the first unfilled column
  puts @arr[0]

end

def make_move

  loc = rand(@arr.length)
  place = @arr[loc]
  # puts 'herrrrr'
  # puts place
  puts place
end

loop do
  @game_state = JSON.parse(gets)
  # row_height = @game_state["board"].length
  @column_width = @game_state["board"][0].length

  if @game_state["winner"]
    break
  end

  @top_row = @game_state["board"][0] # gives top array
  make_first_move
  # puts "Move: #{move}"
end
