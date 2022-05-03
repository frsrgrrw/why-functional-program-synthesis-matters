import os

probs = ['1_Number_IO','2_Small_Or_Large','4_Compare_String_Lengths','11_String_Length_Backwards','12_Last_Index_Of_Zero','13_Vector_Average','16_Super_Anagrams','18_Vector_Summed','21_Negative_To_Zero','27_Median','28_Smallest']


for p in probs:

    print(f'\n{p}')

    res_folder = f'results/recheck/hs/{p}'
    gens = []

    for dir in os.listdir(res_folder):
        filepath = os.path.join(res_folder, dir, 'best.txt')
        if os.path.exists(filepath):
            f = open(filepath, 'r')
            lines = f.readlines()
            if int(lines[-1]) == 0:
                gens.append(int(lines[1]))

    print('TRAINING: ')
    if len(gens) != 0:
        print(f'Passed cases: {len(gens)}, Min gen: {min(gens)}, Max gen: {max(gens)}, Mean: {sum(gens)/len(gens)}')

    test = []
    same_as_train = 0

    for dir in os.listdir(res_folder):
        filepath = os.path.join(res_folder, dir, 'test.txt')
        if os.path.exists(filepath):
            f = open(filepath, 'r')
            lines = f.readlines()
            if int(lines[-3]) == 0:
                test.append(int(lines[1]))
                if bool(lines[-1]):
                    same_as_train += 1

    print('Testing: ')
    print(f'Passed cases: {len(test)}\n')

for p in probs:

    print(f'\n{p}')

    res_folder = f'results/recheck/py/{p}'
    gens = []

    for dir in os.listdir(res_folder):
        filepath = os.path.join(res_folder, dir, 'best.txt')
        if os.path.exists(filepath):
            f = open(filepath, 'r')
            lines = f.readlines()
            if float(lines[-1]) < 0.0000001:
                gens.append(int(lines[1]))

    print('TRAINING: ')
    if len(gens) != 0:
        print(f'Passed cases: {len(gens)}, Min gen: {min(gens)}, Max gen: {max(gens)}, Mean: {sum(gens)/len(gens)}')

    test = []
    same_as_train = 0

    for dir in os.listdir(res_folder):
        filepath = os.path.join(res_folder, dir, 'test.txt')
        if os.path.exists(filepath):
            f = open(filepath, 'r')
            lines = f.readlines()
            if float(lines[-3]) < 0.0000001:
                test.append(int(lines[1]))
                if bool(lines[-1]):
                    same_as_train += 1

    print('Testing: ')
    print(f'Passed cases: {len(test)}\n')