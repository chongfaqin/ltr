sh ./clk_data.sh
sh ./exposure_data.sh
python ./data_proccess.py
python ./data_split.py
python ./data_generator.py
python ./tfltr/prepare_data.py
