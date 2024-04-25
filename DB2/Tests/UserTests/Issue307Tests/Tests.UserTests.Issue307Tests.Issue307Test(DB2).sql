﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW

ALTER TABLE "Person" ALTER COLUMN "PersonID" RESTART WITH 5

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Gender Char(1) -- StringFixedLength
SET     @Gender = 'M'
DECLARE @FirstName VarChar(12) -- String
SET     @FirstName = 'FirstName307'
DECLARE @MiddleName VarChar -- String
SET     @MiddleName = NULL
DECLARE @LastName VarChar(11) -- String
SET     @LastName = 'LastName307'

SELECT
	"PersonID"
FROM
	NEW TABLE
	(
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
			CAST(@FirstName AS NVarChar(12)),
			CAST(@MiddleName AS NVarChar(255)),
			CAST(@LastName AS NVarChar(11))
		)
	)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @id Integer(4) -- Int32
SET     @id = 5

SELECT
	"t1"."PersonID",
	"t1"."Gender",
	"t1"."FirstName",
	"t1"."MiddleName",
	"t1"."LastName"
FROM
	"Person" "t1"
WHERE
	"t1"."PersonID" = @id
FETCH FIRST 1 ROWS ONLY

