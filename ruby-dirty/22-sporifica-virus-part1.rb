lines = DATA.readlines.map(&:strip).reject(&:empty?)

infected = {}

y = -(lines.length / 2)
lines.each do |line|
  x = -(line.length / 2)
  line.chars.each do |c|
    if c == '#'
      infected[[x, y]] = true
    end
    x += 1
  end
  y += 1
end

DIRECTIONS = [[0, -1], [1, 0], [0, 1], [-1, 0]]

x = 0
y = 0
dir = 0
infections_caused = 0

10_000.times do
  if infected[[x, y]]
    dir = (dir + 1) % DIRECTIONS.length
    infected[[x, y]] = false
  else
    dir = (dir - 1) % DIRECTIONS.length
    infected[[x, y]] = true
    infections_caused += 1
  end

  x += DIRECTIONS[dir][0]
  y += DIRECTIONS[dir][1]
end

p infections_caused

__END__
.#.....##..##..###.###..#
..##..######.#.###.##.#.#
###..#..#####.##.##.#...#
###......##..###.#...#.#.
.#.###.##..#.####.#..#...
..#.#.#####...##.####.###
..#..#.#..###.#..###.###.
#########...#....##..#.#.
.###..#######..####...###
#####...#..##...###..##..
..#......##.#....#...####
.##.#..#####.#####.##.##.
####.##.###.#..#.#.#.....
#....##.####.#.#..#.#.##.
###...##...#.###.#.#.####
.#.#...#.#.##.##....##.#.
#..##.#.#..#....###..####
#####...#..#.###...##.###
##.#..####.###...#....###
###.#####.....#....#.##..
####.##.....######.#..#.#
.#.....####.##...###..##.
....########.#..###.#..##
##.##..#...#...##.#....##
.#.######.##....####.#.##
