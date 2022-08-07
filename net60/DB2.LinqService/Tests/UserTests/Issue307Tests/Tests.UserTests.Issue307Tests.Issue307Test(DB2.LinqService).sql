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
			@Gender,
			@FirstName,
			@MiddleName,
			@LastName
		)
	)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @id Integer(4) -- Int32
SET     @id = 5

SELECT
	"_"."PersonID",
	"_"."Gender",
	"_"."FirstName",
	"_"."MiddleName",
	"_"."LastName"
FROM
	"Person" "_"
WHERE
	"_"."PersonID" = @id
FETCH FIRST 1 ROWS ONLY

