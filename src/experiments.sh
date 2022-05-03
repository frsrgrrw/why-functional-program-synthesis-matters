#!/bin/bash

# Haskell runs

sed 's/prog_synth_problem_name/1_Number_IO/g' ../parameters/gpsbs_template.txt > ../parameters/temp.txt
sed -i "s/number_of_generations/100/g" ../parameters/temp.txt
sed -i "s/pop_size/1000/g" ../parameters/temp.txt
sed -i "s/set_tree_nodes/250/g" ../parameters/temp.txt
sed -i "s/language/hs/g" ../parameters/temp.txt
sed -i "s/haskell_flag/True/g" ../parameters/temp.txt
python3 scripts/experiment_manager.py --experiment_name experiment_script/hs/1_Number_IO --runs 100 --parameters temp.txt

sed 's/prog_synth_problem_name/2_Small_Or_Large/g' ../parameters/gpsbs_template.txt > ../parameters/temp.txt
sed -i "s/number_of_generations/100/g" ../parameters/temp.txt
sed -i "s/pop_size/1000/g" ../parameters/temp.txt
sed -i "s/set_tree_nodes/250/g" ../parameters/temp.txt
sed -i "s/language/hs/g" ../parameters/temp.txt
sed -i "s/haskell_flag/True/g" ../parameters/temp.txt
python3 scripts/experiment_manager.py --experiment_name experiment_script/hs/2_Small_Or_Large --runs 100 --parameters temp.txt

sed 's/prog_synth_problem_name/4_Compare_String_Lengths/g' ../parameters/gpsbs_template.txt > ../parameters/temp.txt
sed -i "s/number_of_generations/100/g" ../parameters/temp.txt
sed -i "s/pop_size/1000/g" ../parameters/temp.txt
sed -i "s/set_tree_nodes/250/g" ../parameters/temp.txt
sed -i "s/language/hs/g" ../parameters/temp.txt
sed -i "s/haskell_flag/True/g" ../parameters/temp.txt
python3 scripts/experiment_manager.py --experiment_name experiment_script/hs/4_Compare_String_Lengths --runs 100 --parameters temp.txt

sed 's/prog_synth_problem_name/11_String_Length_Backwards/g' ../parameters/gpsbs_template.txt > ../parameters/temp.txt
sed -i "s/number_of_generations/100/g" ../parameters/temp.txt
sed -i "s/pop_size/1000/g" ../parameters/temp.txt
sed -i "s/set_tree_nodes/250/g" ../parameters/temp.txt
sed -i "s/language/hs/g" ../parameters/temp.txt
sed -i "s/haskell_flag/True/g" ../parameters/temp.txt
python3 scripts/experiment_manager.py --experiment_name experiment_script/hs/11_String_Length_Backwards --runs 100 --parameters temp.txt

sed 's/prog_synth_problem_name/12_Last_Index_Of_Zero/g' ../parameters/gpsbs_template.txt > ../parameters/temp.txt
sed -i "s/number_of_generations/100/g" ../parameters/temp.txt
sed -i "s/pop_size/1000/g" ../parameters/temp.txt
sed -i "s/set_tree_nodes/250/g" ../parameters/temp.txt
sed -i "s/language/hs/g" ../parameters/temp.txt
sed -i "s/haskell_flag/True/g" ../parameters/temp.txt
python3 scripts/experiment_manager.py --experiment_name experiment_script/hs/12_Last_Index_Of_Zero --runs 100 --parameters temp.txt

sed 's/prog_synth_problem_name/13_Vector_Average/g' ../parameters/gpsbs_template.txt > ../parameters/temp.txt
sed -i "s/number_of_generations/100/g" ../parameters/temp.txt
sed -i "s/pop_size/1000/g" ../parameters/temp.txt
sed -i "s/set_tree_nodes/250/g" ../parameters/temp.txt
sed -i "s/language/hs/g" ../parameters/temp.txt
sed -i "s/haskell_flag/True/g" ../parameters/temp.txt
python3 scripts/experiment_manager.py --experiment_name experiment_script/hs/13_Vector_Average --runs 100 --parameters temp.txt

sed 's/prog_synth_problem_name/16_Super_Anagrams/g' ../parameters/gpsbs_template.txt > ../parameters/temp.txt
sed -i "s/number_of_generations/100/g" ../parameters/temp.txt
sed -i "s/pop_size/1000/g" ../parameters/temp.txt
sed -i "s/set_tree_nodes/250/g" ../parameters/temp.txt
sed -i "s/language/hs/g" ../parameters/temp.txt
sed -i "s/haskell_flag/True/g" ../parameters/temp.txt
python3 scripts/experiment_manager.py --experiment_name experiment_script/hs/16_Super_Anagrams --runs 100 --parameters temp.txt

sed 's/prog_synth_problem_name/18_Vector_Summed/g' ../parameters/gpsbs_template.txt > ../parameters/temp.txt
sed -i "s/number_of_generations/100/g" ../parameters/temp.txt
sed -i "s/pop_size/1000/g" ../parameters/temp.txt
sed -i "s/set_tree_nodes/250/g" ../parameters/temp.txt
sed -i "s/language/hs/g" ../parameters/temp.txt
sed -i "s/haskell_flag/True/g" ../parameters/temp.txt
python3 scripts/experiment_manager.py --experiment_name experiment_script/hs/18_Vector_Summed --runs 100 --parameters temp.txt

sed 's/prog_synth_problem_name/21_Negative_To_Zero/g' ../parameters/gpsbs_template.txt > ../parameters/temp.txt
sed -i "s/number_of_generations/100/g" ../parameters/temp.txt
sed -i "s/pop_size/1000/g" ../parameters/temp.txt
sed -i "s/set_tree_nodes/250/g" ../parameters/temp.txt
sed -i "s/language/hs/g" ../parameters/temp.txt
sed -i "s/haskell_flag/True/g" ../parameters/temp.txt
python3 scripts/experiment_manager.py --experiment_name experiment_script/hs/21_Negative_To_Zero --runs 100 --parameters temp.txt

sed 's/prog_synth_problem_name/27_Median/g' ../parameters/gpsbs_template.txt > ../parameters/temp.txt
sed -i "s/number_of_generations/100/g" ../parameters/temp.txt
sed -i "s/pop_size/1000/g" ../parameters/temp.txt
sed -i "s/set_tree_nodes/250/g" ../parameters/temp.txt
sed -i "s/language/hs/g" ../parameters/temp.txt
sed -i "s/haskell_flag/True/g" ../parameters/temp.txt
python3 scripts/experiment_manager.py --experiment_name experiment_script/hs/27_Median --runs 100 --parameters temp.txt

sed 's/prog_synth_problem_name/28_Smallest/g' ../parameters/gpsbs_template.txt > ../parameters/temp.txt
sed -i "s/number_of_generations/100/g" ../parameters/temp.txt
sed -i "s/pop_size/1000/g" ../parameters/temp.txt
sed -i "s/set_tree_nodes/250/g" ../parameters/temp.txt
sed -i "s/language/hs/g" ../parameters/temp.txt
sed -i "s/haskell_flag/True/g" ../parameters/temp.txt
python3 scripts/experiment_manager.py --experiment_name experiment_script/hs/28_Smallest --runs 100 --parameters temp.txt

# Python runs

sed 's/prog_synth_problem_name/1_Number_IO/g' ../parameters/gpsbs_template.txt > ../parameters/temp.txt
sed -i "s/number_of_generations/100/g" ../parameters/temp.txt
sed -i "s/pop_size/1000/g" ../parameters/temp.txt
sed -i "s/set_tree_nodes/250/g" ../parameters/temp.txt
sed -i "s/language/py/g" ../parameters/temp.txt
sed -i "s/haskell_flag/False/g" ../parameters/temp.txt
python3 scripts/experiment_manager.py --experiment_name experiment_script/py/1_Number_IO --runs 100 --parameters temp.txt

sed 's/prog_synth_problem_name/2_Small_Or_Large/g' ../parameters/gpsbs_template.txt > ../parameters/temp.txt
sed -i "s/number_of_generations/100/g" ../parameters/temp.txt
sed -i "s/pop_size/1000/g" ../parameters/temp.txt
sed -i "s/set_tree_nodes/250/g" ../parameters/temp.txt
sed -i "s/language/py/g" ../parameters/temp.txt
sed -i "s/haskell_flag/False/g" ../parameters/temp.txt
python3 scripts/experiment_manager.py --experiment_name experiment_script/py/2_Small_Or_Large --runs 100 --parameters temp.txt

sed 's/prog_synth_problem_name/4_Compare_String_Lengths/g' ../parameters/gpsbs_template.txt > ../parameters/temp.txt
sed -i "s/number_of_generations/100/g" ../parameters/temp.txt
sed -i "s/pop_size/1000/g" ../parameters/temp.txt
sed -i "s/set_tree_nodes/250/g" ../parameters/temp.txt
sed -i "s/language/py/g" ../parameters/temp.txt
sed -i "s/haskell_flag/False/g" ../parameters/temp.txt
python3 scripts/experiment_manager.py --experiment_name experiment_script/py/4_Compare_String_Lengths --runs 100 --parameters temp.txt

sed 's/prog_synth_problem_name/11_String_Length_Backwards/g' ../parameters/gpsbs_template.txt > ../parameters/temp.txt
sed -i "s/number_of_generations/100/g" ../parameters/temp.txt
sed -i "s/pop_size/1000/g" ../parameters/temp.txt
sed -i "s/set_tree_nodes/250/g" ../parameters/temp.txt
sed -i "s/language/hs/g" ../parameters/temp.txt
sed -i "s/haskell_flag/True/g" ../parameters/temp.txt
python3 scripts/experiment_manager.py --experiment_name experiment_script/py/11_String_Length_Backwards --runs 100 --parameters temp.txt

sed 's/prog_synth_problem_name/12_Last_Index_Of_Zero/g' ../parameters/gpsbs_template.txt > ../parameters/temp.txt
sed -i "s/number_of_generations/100/g" ../parameters/temp.txt
sed -i "s/pop_size/1000/g" ../parameters/temp.txt
sed -i "s/set_tree_nodes/250/g" ../parameters/temp.txt
sed -i "s/language/py/g" ../parameters/temp.txt
sed -i "s/haskell_flag/False/g" ../parameters/temp.txt
python3 scripts/experiment_manager.py --experiment_name experiment_script/py/12_Last_Index_Of_Zero --runs 100 --parameters temp.txt

sed 's/prog_synth_problem_name/13_Vector_Average/g' ../parameters/gpsbs_template.txt > ../parameters/temp.txt
sed -i "s/number_of_generations/100/g" ../parameters/temp.txt
sed -i "s/pop_size/1000/g" ../parameters/temp.txt
sed -i "s/set_tree_nodes/250/g" ../parameters/temp.txt
sed -i "s/language/py/g" ../parameters/temp.txt
sed -i "s/haskell_flag/False/g" ../parameters/temp.txt
python3 scripts/experiment_manager.py --experiment_name experiment_script/py/13_Vector_Average --runs 100 --parameters temp.txt

sed 's/prog_synth_problem_name/16_Super_Anagrams/g' ../parameters/gpsbs_template.txt > ../parameters/temp.txt
sed -i "s/number_of_generations/100/g" ../parameters/temp.txt
sed -i "s/pop_size/1000/g" ../parameters/temp.txt
sed -i "s/set_tree_nodes/250/g" ../parameters/temp.txt
sed -i "s/language/py/g" ../parameters/temp.txt
sed -i "s/haskell_flag/False/g" ../parameters/temp.txt
python3 scripts/experiment_manager.py --experiment_name experiment_script/py/16_Super_Anagrams --runs 100 --parameters temp.txt

sed 's/prog_synth_problem_name/18_Vector_Summed/g' ../parameters/gpsbs_template.txt > ../parameters/temp.txt
sed -i "s/number_of_generations/100/g" ../parameters/temp.txt
sed -i "s/pop_size/1000/g" ../parameters/temp.txt
sed -i "s/set_tree_nodes/250/g" ../parameters/temp.txt
sed -i "s/language/py/g" ../parameters/temp.txt
sed -i "s/haskell_flag/False/g" ../parameters/temp.txt
python3 scripts/experiment_manager.py --experiment_name experiment_script/py/18_Vector_Summed --runs 100 --parameters temp.txt

sed 's/prog_synth_problem_name/21_Negative_To_Zero/g' ../parameters/gpsbs_template.txt > ../parameters/temp.txt
sed -i "s/number_of_generations/100/g" ../parameters/temp.txt
sed -i "s/pop_size/1000/g" ../parameters/temp.txt
sed -i "s/set_tree_nodes/250/g" ../parameters/temp.txt
sed -i "s/language/py/g" ../parameters/temp.txt
sed -i "s/haskell_flag/False/g" ../parameters/temp.txt
python3 scripts/experiment_manager.py --experiment_name experiment_script/py/21_Negative_To_Zero --runs 100 --parameters temp.txt

sed 's/prog_synth_problem_name/27_Median/g' ../parameters/gpsbs_template.txt > ../parameters/temp.txt
sed -i "s/number_of_generations/100/g" ../parameters/temp.txt
sed -i "s/pop_size/1000/g" ../parameters/temp.txt
sed -i "s/set_tree_nodes/250/g" ../parameters/temp.txt
sed -i "s/language/py/g" ../parameters/temp.txt
sed -i "s/haskell_flag/False/g" ../parameters/temp.txt
python3 scripts/experiment_manager.py --experiment_name experiment_script/py/27_Median --runs 100 --parameters temp.txt

sed 's/prog_synth_problem_name/28_Smallest/g' ../parameters/gpsbs_template.txt > ../parameters/temp.txt
sed -i "s/number_of_generations/100/g" ../parameters/temp.txt
sed -i "s/pop_size/1000/g" ../parameters/temp.txt
sed -i "s/set_tree_nodes/250/g" ../parameters/temp.txt
sed -i "s/language/py/g" ../parameters/temp.txt
sed -i "s/haskell_flag/False/g" ../parameters/temp.txt
python3 scripts/experiment_manager.py --experiment_name experiment_script/py/28_Smallest --runs 100 --parameters temp.txt

