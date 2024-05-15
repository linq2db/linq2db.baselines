BeforeExecute
-- DB2 DB2.LUW DB2LUW

DELETE FROM
	"Person" "t1"
WHERE
	"t1"."FirstName" LIKE 'Insert15%' ESCAPE '~'

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Gender Char(1) -- StringFixedLength
SET     @Gender = 'M'
DECLARE @Name_FirstName VarChar(8) -- String
SET     @Name_FirstName = 'Insert15'
DECLARE @Name_MiddleName VarChar -- String
SET     @Name_MiddleName = NULL
DECLARE @Name_LastName VarChar(8) -- String
SET     @Name_LastName = 'Insert15'

INSERT INTO "Person"
(
	"Gender",
	"FirstName",
	"MiddleName",
	"LastName"
)
VALUES
(
	@Gender,
	@Name_FirstName,
	@Name_MiddleName,
	@Name_LastName
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"Person" "t1"
WHERE
	"t1"."FirstName" LIKE 'Insert15%' ESCAPE '~'

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DELETE FROM
	"Person" "t1"
WHERE
	"t1"."FirstName" LIKE 'Insert15%' ESCAPE '~'

