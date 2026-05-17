-- DB2 DB2.LUW DB2LUW

SELECT
	MAX("t1"."PersonID")
FROM
	"Person" "t1"

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
	@Gender,
	@Name_FirstName,
	@Name_MiddleName,
	@Name_LastName
)

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
	"p2"."PersonID" > @id OR "p2"."PersonID" = 0
FETCH NEXT 2 ROWS ONLY

