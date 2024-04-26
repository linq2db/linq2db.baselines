BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @FirstName VarChar(4) -- String
SET     @FirstName = 'John'
DECLARE @LastName VarChar(10) -- String
SET     @LastName = 'Limonadovy'
DECLARE @Gender Char(1) -- StringFixedLength
SET     @Gender = 'M'

INSERT INTO "Person"
(
	"FirstName",
	"LastName",
	"Gender"
)
VALUES
(
	CAST(@FirstName AS NVarChar(4)),
	CAST(@LastName AS NVarChar(10)),
	CAST(@Gender AS NChar(1))
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"Person" "c_1"
WHERE
	"c_1"."LastName" = 'Limonadovy'

BeforeExecute
-- DB2 DB2.LUW DB2LUW

UPDATE
	"Person" "c_1"
SET
	"FirstName" = 'Johnny'
WHERE
	"c_1"."LastName" = 'Limonadovy'

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"Person" "c_1"
WHERE
	"c_1"."FirstName" = 'Johnny' AND "c_1"."LastName" = 'Limonadovy'

