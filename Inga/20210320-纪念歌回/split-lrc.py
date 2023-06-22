def f(s):
    arr = []
    for i, l in enumerate(s.split('\n')):
        if i % 2:
            print(l)
        else:
            arr.append(l)
    print('\n\n')
    for l in arr:
        print(l)
