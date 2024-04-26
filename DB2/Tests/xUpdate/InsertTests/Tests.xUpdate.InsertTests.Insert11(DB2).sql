BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	MAX("t1"."PersonID")
FROM
	"Person" "t1"

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Gender Char(1) -- StringFixedLength
SET     @Gender = 'M'
DECLARE @Name_FirstName VarChar(2) -- String
SET     @Name_FirstName = 'fn'
DECLARE @Name_MiddleName VarChar -- String
SET     @Name_MiddleName = NULL
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
	CAST(@Gender AS NChar(1)),
	CAST(@Name_FirstName AS NVarChar(2)),
	CAST(@Name_MiddleName AS NVarChar(255)),
	CAST(@Name_LastName AS NVarChar(2))
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @id Integer(4) -- Int32
SET     @id = 4

SELECT
	"p2"."PersonID",
	"p2"."Gender",
	"p2"."FirstName",
	"p2"."MiddleName",
	"p2"."LastName"
FROM
	"Person" "p2"
WHERE
	("p2"."PersonID" > @id OR "p2"."PersonID" = 0)
FETCH FIRST 2 ROWS ONLY

