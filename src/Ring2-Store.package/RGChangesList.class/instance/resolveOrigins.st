initialization
resolveOrigins

	"Try to resolve origin for all changes from the changes in the list"
	
	| resolver |
	
	resolver := RGChangesResolver for: self environment.
	^ resolver resolve: changes.