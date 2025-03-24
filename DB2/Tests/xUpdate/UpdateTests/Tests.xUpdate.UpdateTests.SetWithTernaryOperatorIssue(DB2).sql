﻿BeforeExecute
--  DB2 DB2.LUW DB2LUW

ALTER TABLE "Person" ALTER COLUMN "PersonID" RESTART WITH 5

BeforeExecute
--  DB2 DB2.LUW DB2LUW
DECLARE @Gender Char(1) -- StringFixedLength
SET     @Gender = 'M'
DECLARE @Name_FirstName VarChar(13) -- String
SET     @Name_FirstName = 'UpdateComplex'
DECLARE @Name_MiddleName VarChar -- String
SET     @Name_MiddleName = NULL
DECLARE @Name_LastName VarChar(5) -- String
SET     @Name_LastName = 'Empty'

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
			@Name_FirstName,
			@Name_MiddleName,
			@Name_LastName
		)
	)

BeforeExecute
--  DB2 DB2.LUW DB2LUW
DECLARE @nullableGender Char(1) -- StringFixedLength
SET     @nullableGender = 'O'

UPDATE
	"Person" "t1"
SET
	"Gender" = @nullableGender
WHERE
	"t1"."FirstName" LIKE 'UpdateComplex%' ESCAPE '~'

BeforeExecute
--  DB2 DB2.LUW DB2LUW
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
FETCH NEXT 1 ROWS ONLY

