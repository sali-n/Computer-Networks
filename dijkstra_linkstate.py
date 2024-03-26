'''
djkistra algorithm.
'''
def djk(node,adjli,nonvisited):
    if node not in nonvisited or node is None:
        return
    nonvisited.remove(node)
    minval = 1000
    minnode = None
    for k in adjli[node][1]:
        cost = adjli[node][0] + int(k[-1])
        if cost < adjli[k[0]][0]:
            adjli[k[0]][0] = cost
        if minval > adjli[k[0]][0] and k[0] in nonvisited:
            minval = adjli[k[0]][0]
            minnode = k[0]
    djk(minnode,adjli,nonvisited)

adjli = {
    'a': [1000,['b1','c3']],   #li is [cost, [neighbours+cost,...]]
    'b': [1000,['a2','c1','d4']],
    'c': [1000,['a3','b1','d2']],
    'd': [1000,['b4','c2']]
}

starting_node = input('enter starting node (a,b,c,d):')
adjli[starting_node][0] = 0

nonvisited = set(adjli.keys())
djk(starting_node,adjli,nonvisited)
while len(nonvisited)!=0:
    # print(nonvisited)
    djk(next(iter(nonvisited)),adjli,nonvisited)

print('node\t\tdistance')
for i in adjli:
    print(f'{i}\t\t{adjli[i][0]}')

#%%
'''
link-state algorithm.
'''
class Table:
    def __init__(self,node,adjli):
        self.dic = dict((i,999) for i in adjli.keys())
        self.dic[node] = 0
        for i in adjli[node][0]:
            self.dic[i[0]] = int(i[-1])
    
    def check(self,node,dic2):
        l = False
        dist = self.dic[node]
        for i in self.dic:
            if (dist+dic2[i]) < self.dic[i]:
                self.dic[i] = dist+dic2[i]
                l = True
        return l

adjli = {
    'a': [['b2','c4']],   
    'b': [['a2','c9','d4']],
    'c': [['a4','b9','d2']],
    'd': [['b4','c2']]
}

#initalize table
for i in adjli:
    adjli[i].append(Table(i,adjli))

print('before:')
for i in adjli:
    print(adjli[i][1].dic)

while True:
    change = False
    for i in adjli:
        for j in adjli:
            if i!=j:
                k = adjli[i][1].check(j,adjli[j][1].dic)
                if change==False:
                    change=k
    if change==False:
        break

print('\nafter:')
for i in adjli:
    print(adjli[i][1].dic)
