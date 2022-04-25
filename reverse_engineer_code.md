Data format:

cross_docked_pocked10/
     index.pkl
     pocketome_name_xx_0/
        5bsm_A_rec_5bsm_atp_lig_tt_docked_0_pocket10.pdb
        5bsm_A_rec_5bsm_atp_lig_tt_docked_0.sdf
        ...
     ...

index = [('1B57_HUMAN_25_300_0/5u98_D_rec_5u98_1kx_lig_tt_min_0_pocket10.pdb',
	  '1B57_HUMAN_25_300_0/5u98_D_rec_5u98_1kx_lig_tt_min_0.sdf',
          '1B57_HUMAN_25_300_0/5u98_D_rec.pdb',
	  0.367042), ...]
        
index = [(combined_relpath, ligand_relpath, receptor_relpath, rmsd_str)]

data = 
ProteinLigandData(
  protein_element=[405],
  protein_molecule_name='pocket',
  protein_pos=[405, 3],
  protein_is_backbone=[405],
  protein_atom_name=[405],
  protein_atom_to_aa_type=[405],
  ligand_element=[21],
  ligand_pos=[21, 3],
  ligand_bond_index=[2, 48],
  ligand_bond_type=[48],
  ligand_center_of_mass=[3],
  ligand_atom_feature=[21, 8],
  ligand_nbh_list={0=[3], 1=[2], 2=[3], 3=[2], 4=[2], 5=[3], 6=[2], 7=[1], 8=[3], 9=[3], 10=[3],
    11=[2], 12=[2], 13=[3], 14=[2], 15=[1], 16=[2], 17=[2], 18=[2], 19=[3], 20=[2]},
  protein_filename='1B57_HUMAN_25_300_0/5u98_D_rec_5u98_1kx_lig_tt_min_0_pocket10.pdb',
  ligand_filename='1B57_HUMAN_25_300_0/5u98_D_rec_5u98_1kx_lig_tt_min_0.sdf'
)

split = {
'train': [('DYR_STAAU_2_158_0/4xe6_X_rec_3fqc_55v_lig_tt_docked_4_pocket10.pdb',
           'DYR_STAAU_2_158_0/4xe6_X_rec_3fqc_55v_lig_tt_docked_4.sdf'), ...], 'test': [(), ...]}

len(split['train']) == 100000
len(split['test']) == 100
