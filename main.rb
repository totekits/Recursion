def fibs(n)
  if n == 0
    return nil
  elsif n == 1 
    return [0] 
  else 
    result = [0, 1] 
    (n-2).times { result << result[-1] + result[-2] }
    result
  end
end
  
def fibs_rec(n, result = [0, 1])
  if n <= 0 
    return nil
  elsif n == 1 
    return [0] 
  elsif n == 2
    return result
  else 
    result << result[-1] + result[-2]
    return fibs_rec(n-1, result) 
  end
end