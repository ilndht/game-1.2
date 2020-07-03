def sum_for_list(lst):
    c = set()
    for num in lst :
        import math
        n = abs(num) 
        x = math.floor(math.sqrt(n))                   
        A= list(range(2,n+1))
        for i in range (2,x+1) :
            for j in range (i**2,n+1,i):
                if j in A : 
                    A.remove(j)
        for m in A : 
            if n%m== 0 :
                c.add(m)
    b=sorted(list(c))
    d = []
    for dividend in b : 
        a = [dividend,0]
        for number in lst :
            if number % dividend == 0 : 
                a[1] += number 
        d.append(a)
    return d 
