BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)

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

