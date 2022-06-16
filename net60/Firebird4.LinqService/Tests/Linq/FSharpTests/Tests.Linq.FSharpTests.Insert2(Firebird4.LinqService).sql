BeforeExecute
-- Firebird4 Firebird

SELECT
	Max("p"."PersonID")
FROM
	"Person" "p"

BeforeExecute
-- Firebird4 Firebird
DECLARE @Gender VarChar(1) -- String
SET     @Gender = 'M'
DECLARE @Name_FirstName VarChar(2) -- String
SET     @Name_FirstName = 'fn'
DECLARE @Name_MiddleName VarChar -- String
SET     @Name_MiddleName = ''
DECLARE @Name_LastName VarChar(2) -- String
SET     @Name_LastName = 'ln'

INSERT INTO "Person"
(
	"PersonID",
	"Gender",
	"FirstName",
	"MiddleName",
	"LastName"
)
VALUES
(
	GEN_ID("PersonID", 1),
	@Gender,
	@Name_FirstName,
	@Name_MiddleName,
	@Name_LastName
)

BeforeExecute
-- Firebird4 Firebird
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT FIRST @take
	"p"."PersonID",
	"p"."Gender",
	"p"."FirstName",
	"p"."MiddleName",
	"p"."LastName"
FROM
	"Person" "p"
WHERE
	"p"."PersonID" > 4

BeforeExecute
-- Firebird4 Firebird

DELETE FROM
	"Person" "t1"
WHERE
	"t1"."PersonID" > 4

