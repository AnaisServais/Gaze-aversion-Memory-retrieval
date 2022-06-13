# The Python jupyter notebooks perform the following tasks : 

```
- 1_extraction_gaze_aversion.ipynb: This notebook contains the code to identify gaze aversion in the eye-tracking signal.
- 2_extraction_gaze_aversion_access.ipynb: This notebook will create files containing characteristics of gaze aversion during the access phase. The files will be used later to create figures and proceed statistical analyses.
- 3_extraction_gaze_aversion_elaboration.ipynb: This notebook will create files containing characteristics of gaze aversion during the elaboration phase. The files will be used later to create figures and proceed statistical analyses.
- 4_eye vergence calculation.ipynb: This notebook contains the code to calculate, based on the eye-tracking signal, if there is some significant divergence or convergence during a trials.
- 5_figures_gaze_aversions.ipynb: This notebook reproduces figures from the paper and provide supplementary figures.
- 6_statistical_tests_analyses_gaze aversion.ipynb: This notebook reproduces results from statistical analyses from the paper.
- 7_head_movement_subjective and objective analyses.ipynb: This notebook reproduces analyses for head movement present in the paper.

```
Please run the notebooks in the indicated order.

NOTE: don't run the same noteook twice. After running notebooks 1-3, if for some reason, you need to run them again, please delete the .csv files which have been created in ./data/ before.

# The R files perform the following tasks: 

```
- R_script_clustering analysis_orientation gaze aversion.R: Script to reproduce clustering analysis based on the orientation of gaze aversions (see paper).
- R_script_dendrogram.R: Script to reproduce clustering analysis and dendrogram based on the vergence/gaze aversion preference (see paper).

```
R files can be run on [RStudio](https://www.rstudio.com/products/rstudio/download/#download).
