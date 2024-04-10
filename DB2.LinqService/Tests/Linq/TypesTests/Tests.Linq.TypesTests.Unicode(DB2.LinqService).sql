﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @FirstName VarChar(4) -- String
SET     @FirstName = '擊敗奴隸'
DECLARE @LastName VarChar(9) -- String
SET     @LastName = 'Юникодкин'
DECLARE @MiddleName VarChar -- String
SET     @MiddleName = NULL
DECLARE @Gender Char(1) -- StringFixedLength
SET     @Gender = 'M'

INSERT INTO "Person"
(
	"FirstName",
	"LastName",
	"MiddleName",
	"Gender"
)
VALUES
(
	CAST(@FirstName AS NVarChar(4)),
	CAST(@LastName AS NVarChar(9)),
	CAST(@MiddleName AS NVarChar(255)),
	CAST(@Gender AS Char(1))
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
	"p"."FirstName" = '擊敗奴隸' AND "p"."LastName" = 'Юникодкин'
FETCH FIRST 2 ROWS ONLY

