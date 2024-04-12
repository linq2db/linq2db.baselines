﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW

DELETE FROM
	"Person" "_"
WHERE
	"_"."PersonID" > 4

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @FirstName VarChar(4) -- String
SET     @FirstName = 'John'
DECLARE @LastName VarChar(7) -- String
SET     @LastName = 'Shepard'
DECLARE @Gender Char(1) -- StringFixedLength
SET     @Gender = 'M'

SELECT
	"PersonID"
FROM
	NEW TABLE
	(
		INSERT INTO "Person"
		(
			"FirstName",
			"LastName",
			"Gender"
		)
		VALUES
		(
			CAST(@FirstName AS NVarChar(4)),
			CAST(@LastName AS NVarChar(7)),
			CAST(@Gender AS Char(1))
		)
	)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	"p"."FirstName" = 'John' AND "p"."LastName" = 'Shepard'
FETCH FIRST 2 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DELETE FROM
	"Person" "_"
WHERE
	"_"."PersonID" > 4

