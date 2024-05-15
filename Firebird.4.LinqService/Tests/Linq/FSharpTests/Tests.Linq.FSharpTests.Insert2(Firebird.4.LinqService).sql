BeforeExecute
-- Firebird.4 Firebird4

SELECT
	MAX("t1"."PersonID")
FROM
	"Person" "t1"

BeforeExecute
-- Firebird.4 Firebird4
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
-- Firebird.4 Firebird4

SELECT
	"p"."PersonID",
	"p"."FirstName",
	"p"."MiddleName",
	"p"."LastName",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	"p"."PersonID" > 4
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Firebird.4 Firebird4

DELETE FROM
	"Person" "t"
WHERE
	"t"."PersonID" > 4

