Testing pocket generator:
Reward modules:
 - Pocket 
 - Pharmacophore

CombinedReward(**{
    **CombinedReward.get_disabled_options(),
    'add_pocket_similarity': True,
    'pocket_xyz_path': '6MOJ_GLY496_pocket.xyz',
    }
).transform([conf])

reward.transform(confs, only_modules=['3d'])

1. Calculate reward for mols generated with the model
2. Calculate reward for top reward molecules

Take CrossDocked and pass it through 2D modules
Use this output to retrain the model.

Add datasets from our case studies to the training set
