library(NbClust)
current_dir <- getwd()
path_file <- paste(current_dir,"/data/processed_data/files for clustering analyses/profile_vergence_aversion_for_clustering.csv")
raw_data <- read.csv(path_file)
df <- raw_data[, -1] #delete column 1
df <- df[, -1] #delete column 1
df <- df[,-8]
df <- df[,-7]

# NbClust to determine the best number of clusters
nb = NbClust(iris[-5], method = "ward.D2")

# Calculate hierarchical clustering and dendogram
d = dist(df) 
h = hclust(d) # complete by default
plot(h)
zz.int = identify(h)
zz.int
sapply(zz.int, length)
z.int = Reduce(function(a, b) return(a + (b * (max(a) + 1))), 
               lapply(zz.int, function(c) return (1:nrow(iris) %in% c)))
table(z.int)
plot(h)

# set best number of clusters to 3 because optimal number of clusters according to the larger number of indices
best_nb_clusters = 3
rect.hclust(h, best_nb_clusters)
