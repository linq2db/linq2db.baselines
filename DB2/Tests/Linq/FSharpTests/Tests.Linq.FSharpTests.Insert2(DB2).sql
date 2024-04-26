BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	MAX("t1"."PersonID")
FROM
	"Person" "t1"

BeforeExecute
-- DB2 DB2.LUW DB2LUW
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
	"Gender",
	"FirstName",
	"MiddleName",
	"LastName"
)
VALUES
(
	CAST(@Gender AS NVarChar(1)),
	CAST(@Name_FirstName AS NVarChar(2)),
	CAST(@Name_MiddleName AS NVarChar(8168)),
	CAST(@Name_LastName AS NVarChar(2))
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

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
FETCH FIRST 2 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DELETE FROM
	"Person" "t"
WHERE
	"t"."PersonID" > 4

