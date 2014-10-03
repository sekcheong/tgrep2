
(1..100).each do |n|
  x=1000*n

  `rm test.txt`
  `rm pattern.txt`
  `rm pattern2.txt`
  `rm test.t2c`
  `runhaskell maketest.hs #{x} > test.txt`
  `runhaskell makepattern.hs #{x} > pattern.txt`
  `runhaskell makepattern2.hs #{x} > pattern2.txt`

  `./tgrep2 -p test.txt test.t2c`
  `time ./tgrep2 -c test.t2c pattern2.txt`
  `time ./tgrep2 -c test.t2c pattern.txt`
end
