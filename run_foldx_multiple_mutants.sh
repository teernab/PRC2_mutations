for mutant in `cat t-all_mutants.txt`
do
echo $mutant
echo $mutant | sed 's/$/;/g' >individual_list.txt 
cat individual_list.txt
./foldx_4.exe --command=BuildModel --pdb=5hyn_A_noHET_Repair.pdb --mutant-file=individual_list.txt
mv 5hyn_A_noHET_Repair_1.pdb EZH2\_$mutant.pdb
mv WT_5hyn_A_noHET_Repair_1.pdb WT_EZH2\_$mutant.pdb
mv Average_5hyn_A_noHET_Repair.fxout Average\_$mutant.fxout
mv Dif_5hyn_A_noHET_Repair.fxout Dif\_$mutant.fxout
mv Raw_5hyn_A_noHET_Repair.fxout Raw\_$mutant.fxout
mv PdbList_5hyn_A_noHET_Repair.fxout PdbList\_$mutant.fxout 
done
