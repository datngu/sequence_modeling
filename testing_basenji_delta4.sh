#

tmux a

conda activate basenji

cd /delta4/test_DL

# git clone https://github.com/calico/basenji.git
# mv basenji basenji_git
# # moving the basenji lib out to import it easily
# cp -r basenji_git/basenji basenji

# ## preprocessing data
# mkdir -p data

## python

# import os, subprocess

# if not os.path.isfile('data/hg19.ml.fa'):
#     subprocess.call('curl -o data/hg19.ml.fa https://storage.googleapis.com/basenji_tutorial_data/hg19.ml.fa', shell=True)
#     subprocess.call('curl -o data/hg19.ml.fa.fai https://storage.googleapis.com/basenji_tutorial_data/hg19.ml.fa.fai', shell=True)
#     subprocess.call('curl -o data/unmap_macro.bed https://raw.githubusercontent.com/calico/basenji/master/tutorials/data/unmap_macro.bed', shell=True)

    


# if not os.path.isfile('data/CNhs11760.bw'):
#     subprocess.call('curl -o data/CNhs11760.bw https://storage.googleapis.com/basenji_tutorial_data/CNhs11760.bw', shell=True)
#     subprocess.call('curl -o data/CNhs12843.bw https://storage.googleapis.com/basenji_tutorial_data/CNhs12843.bw', shell=True)
#     subprocess.call('curl -o data/CNhs12856.bw https://storage.googleapis.com/basenji_tutorial_data/CNhs12856.bw', shell=True)

# lines = [['index','identifier','file','clip','sum_stat','description']]
# lines.append(['0', 'CNhs11760', 'data/CNhs11760.bw', '384', 'sum', 'aorta'])
# lines.append(['1', 'CNhs12843', 'data/CNhs12843.bw', '384', 'sum', 'artery'])
# lines.append(['2', 'CNhs12856', 'data/CNhs12856.bw', '384', 'sum', 'pulmonic_valve'])

# samples_out = open('data/heart_wigs.txt', 'w')
# for line in lines:
#     print('\t'.join(line), file=samples_out)

# samples_out.close()


## shell

#bin=/delta4/test_DL/basenji_git/bin
#export PYTHONPATH=/delta4/test_DL/basenji:$PYTHONPATH
export PYTHONPATH=/delta4/test_DL/basenji

conda activate basenji

PATH=/delta4/test_DL/my_bin:$PATH

rm -rf data/te
basenji_data.py -s .1 -g data/unmap_macro.bed -l 131072 --local -o data/te -p 8 -t .1 -v .1 -w 128 data/hg19.ml.fa data/heart_wigs.txt










