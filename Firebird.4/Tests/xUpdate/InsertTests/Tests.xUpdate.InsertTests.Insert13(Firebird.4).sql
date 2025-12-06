-- Firebird.4 Firebird4

INSERT INTO "Person"
(
	"PersonID",
	"FirstName",
	"LastName",
	"Gender"
)
VALUES
(
	GEN_ID("PersonID", 1),
	'FirstName',
	'LastName',
	'M'
)

