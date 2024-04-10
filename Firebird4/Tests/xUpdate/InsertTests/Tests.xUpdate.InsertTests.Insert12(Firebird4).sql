BeforeExecute
-- Firebird4 Firebird
DECLARE @FirstName VarChar(9) -- String
SET     @FirstName = 'FirstName'
DECLARE @LastName VarChar(8) -- String
SET     @LastName = 'LastName'
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
	CAST(@LastName AS VARCHAR(8)),
	CAST(@Gender AS CHAR(1))
)

