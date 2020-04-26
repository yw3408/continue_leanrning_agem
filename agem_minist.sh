GPUID=-1
OUTDIR=outputs/permuted_MNIST_incremental_class
REPEAT=1
python ./iBatchLearn_dual.py --gpuid ${GPUID} --repeat ${REPEAT} --incremental_class --optimizer SGD  --n_permutation 10 --force_out_dim 100 --schedule 2 --batch_size 128 --model_name MLP1000 --agent_type customization  --agent_name AGEM_4000   --lr 0.1 --reg_coef 0.5
python ./iBatchLearn_dual.py --gpuid ${GPUID} --repeat ${REPEAT} --incremental_class --optimizer SGD --gan_add   --n_permutation 10 --force_out_dim 100 --schedule 2 --batch_size 128 --model_name MLP1000 --agent_type customization  --agent_name AGEM_4000   --lr 0.1 --reg_coef 0.5