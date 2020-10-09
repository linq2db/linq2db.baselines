BeforeExecute
-- Firebird3 Firebird

SELECT 
	Max("t"."PersonID")
FROM
	"Person" "t"

BeforeExecute
-- Firebird3 Firebird
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
-- Firebird3 Firebird
DECLARE @take Integer -- Int32
SET     @take = 2
DECLARE @id Integer -- Int32
SET     @id = 4

SELECT FIRST @take 
	"p2"."PersonID", 
	"p2"."Gender", 
	"p2"."FirstName", 
	"p2"."MiddleName", 
	"p2"."LastName"
FROM
	"Person" "p2"
WHERE
	"p2"."PersonID" > @id

BeforeExecute
-- Firebird3 Firebird
DECLARE @id Integer -- Int32
SET     @id = 4

DELETE FROM
	"Person" "t1"
WHERE
	"t1"."PersonID" > @id

