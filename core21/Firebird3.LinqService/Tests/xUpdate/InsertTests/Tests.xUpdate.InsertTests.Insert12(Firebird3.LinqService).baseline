BeforeExecute
-- Firebird3 Firebird

SELECT
	Max("t"."PersonID")
FROM
	"Person" "t"

BeforeExecute
-- Firebird3 Firebird
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
	Cast(@Gender as VarChar(255) CHARACTER SET UNICODE_FSS)
)

BeforeExecute
-- Firebird3 Firebird
DECLARE @id Integer -- Int32
SET     @id = 4

DELETE FROM
	"Person" "t1"
WHERE
	"t1"."PersonID" > @id

