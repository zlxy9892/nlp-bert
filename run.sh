#!/usr/bin/env bash

export BERT_BASE_DIR=./data/multi_cased_L-12_H-768_A-12
export GLUE_DIR=./data/glue_data
export TRAINED_CLASSIFIER=./data/multi_cased_L-12_H-768_A-12/bert_model.ckpt

#python run_classifier_single_sentence.py \
#    --task_name=COLA \
#    --do_train=true \
#    --do_eval=true \
#    --data_dir=$GLUE_DIR/CoLA \
#    --vocab_file=$BERT_BASE_DIR/vocab.txt \
#    --bert_config_file=$BERT_BASE_DIR/bert_config.json \
#    --init_checkpoint=$BERT_BASE_DIR/bert_model.ckpt \
#    --max_seq_length=128 \
#    --train_batch_size=32 \
#    --learning_rate=2e-5 \
#    --num_train_epochs=3.0 \
#    --output_dir=/tmp/cola_output/ \
#    --do_lower_case=False


python run_classifier_single_sentence.py \
    --task_name=COLA \
    --do_predict=true \
    --data_dir=$GLUE_DIR/CoLA \
    --vocab_file=$BERT_BASE_DIR/vocab.txt \
    --bert_config_file=$BERT_BASE_DIR/bert_config.json \
    --init_checkpoint=$TRAINED_CLASSIFIER \
    --max_seq_length=128 \
    --output_dir=/tmp/cola_output/ \
    --do_lower_case=False
