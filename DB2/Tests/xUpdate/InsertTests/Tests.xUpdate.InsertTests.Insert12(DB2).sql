BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @FirstName VarChar(9) -- String
SET     @FirstName = 'FirstName'
DECLARE @LastName VarChar(8) -- String
SET     @LastName = 'LastName'
DECLARE @Gender Char(1) -- StringFixedLength
SET     @Gender = 'F'

INSERT INTO "Person"
(
	"FirstName",
	"LastName",
	"Gender"
)
VALUES
(
	CAST(@FirstName AS NVarChar(9)),
	CAST(@LastName AS NVarChar(8)),
	CAST(@Gender AS NChar(1))
)

