BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

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

