# Adjacency matrix of Exposome-targets vs metabolites-targets:
# targets are proteins
library(igraph)
generate_matrix_ET_mt = function(graph) {
	index_vector_ET = which(V(graph)$name %in% final_vector_ET)
	exposome_target_ET = which(V(graph)$name %in% exposome_targets)
	sp_matrix = shortest.paths(graph, mode="all", weights=NULL)
	sp_matrix_a = sp_matrix[index_vector_ET,]
	sp_matrix_b = sp_matrix_a[,exposome_target_ET]
}
