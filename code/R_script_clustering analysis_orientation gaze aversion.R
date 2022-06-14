library(NbClust)
current_dir <- getwd()
path_file <- paste(current_dir,"/data/processed_data/files for clustering analyses/orientation_gaze_aversion_table_for_clustering.csv")
raw_data <- read.csv(path_file)

df <- raw_data[, -1] #delete column 1 with codes of subjects
df <- df[, -9] #delete column 9 if you want to reproduce the clustering analysis
# otherwise, column 9 already contain the result of this analysis in the .csv file

set.seed(1234)
nc <- NbClust(df, min.nc=2, max.nc=15, method="kmeans")

barplot(table(nc$Best.n[1,]), xlab="Numer of Clusters", ylab="Number of Criteria",main="Number of Clusters Chosen by 26 Criteria")
table(nc$Best.n[1,])

# run kmeans clustering analysis because the optimal number of clusters is 3
set.seed(1234)
fit.km <- kmeans(df, centers=3,  nstart=25)
fit.km$size

# recursive clustering analysis on the heterogenous cluster (21 participants)
raw_data2 <- read.csv("F:/Noemie/OpenAccess repository/processed_data/files for clustering analyses/orientation_gaze_aversion_table_for_clustering_recursive.csv")
df2 <- raw_data2[, -1] #delete column 1 with codes of subjects
df2 <- df2[, -9] #delete column 9 if you want to reproduce the clustering analysis
# otherwise, column 9 already contain the result of this analysis in the .csv file

set.seed(1234)
nc2 <- NbClust(df2, min.nc=2, max.nc=15, method="kmeans")

barplot(table(nc2$Best.n[1,]), xlab="Numer of Clusters", ylab="Number of Criteria",main="Number of Clusters Chosen by 26 Criteria")
table(nc2$Best.n[1,])

# run kmeans clustering analysis because the optimal number of clusters is again 3
set.seed(1234)
fit.km <- kmeans(df2, centers=3,  nstart=25)
fit.km$size
