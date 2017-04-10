def fibs(n)
  f1 = 0
  f2 = 1
  n.times { f1, f2 = f2, f1 + f2 }
   f1
end

def fibs_rec(n)
  n <= 1 ? n : fibs_rec(n - 1) + fibs_rec(n - 2)
end

