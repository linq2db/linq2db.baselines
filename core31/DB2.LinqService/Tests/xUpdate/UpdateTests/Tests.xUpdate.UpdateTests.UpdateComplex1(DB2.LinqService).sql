﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW

ALTER TABLE "Person" ALTER COLUMN "PersonID" RESTART WITH 5

BeforeExecute
-- DB2 DB2.LUW DB2LUW
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

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Gender Char(1) -- StringFixedLength
SET     @Gender = 'M'
DECLARE @Name_FirstName VarChar(13) -- String
SET     @Name_FirstName = 'UpdateComplex'
DECLARE @Name_MiddleName VarChar -- String
SET     @Name_MiddleName = NULL
DECLARE @Name_LastName VarChar(13) -- String
SET     @Name_LastName = 'UpdateComplex'
DECLARE @ID Integer(4) -- Int32
SET     @ID = 5

UPDATE
	"Person"
SET
	"Person"."Gender" = @Gender,
	"Person"."FirstName" = @Name_FirstName,
	"Person"."MiddleName" = @Name_MiddleName,
	"Person"."LastName" = @Name_LastName
WHERE
	"Person"."PersonID" = @ID

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

