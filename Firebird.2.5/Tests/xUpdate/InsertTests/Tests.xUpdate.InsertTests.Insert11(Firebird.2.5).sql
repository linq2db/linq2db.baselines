BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	MAX("t1"."PersonID")
FROM
	"Person" "t1"

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @Gender Char(1) -- String
SET     @Gender = 'M'
DECLARE @Name_FirstName VarChar(2) -- String
SET     @Name_FirstName = 'fn'
DECLARE @Name_MiddleName VarChar -- String
SET     @Name_MiddleName = NULL
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
-- Firebird.2.5 Firebird
DECLARE @id Integer -- Int32
SET     @id = 4

SELECT FIRST 2
	"p2"."PersonID",
	"p2"."Gender",
	"p2"."FirstName",
	"p2"."MiddleName",
	"p2"."LastName"
FROM
	"Person" "p2"
WHERE
	"p2"."PersonID" > @id OR "p2"."PersonID" = 0

