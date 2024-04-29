BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @FirstName VarChar(9) -- String
SET     @FirstName = 'FirstName'
DECLARE @Gender Char(1) -- String
SET     @Gender = 'F'

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
	CAST(@FirstName AS VARCHAR(9)),
	'LastName',
	CAST(@Gender AS CHAR(1))
)

