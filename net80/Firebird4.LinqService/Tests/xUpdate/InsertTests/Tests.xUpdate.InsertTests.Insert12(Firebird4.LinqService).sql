BeforeExecute
-- Firebird4 Firebird
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
	Cast(@FirstName as VarChar(255) CHARACTER SET UNICODE_FSS),
	'LastName',
	Cast(@Gender as NChar(1))
)

