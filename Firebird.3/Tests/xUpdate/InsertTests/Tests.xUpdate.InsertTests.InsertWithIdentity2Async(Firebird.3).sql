﻿BeforeExecute
-- Firebird.3 Firebird3

DELETE FROM
	"Person" "t1"
WHERE
	"t1"."PersonID" > 4

BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)
DECLARE @FirstName VarChar(4) -- String
SET     @FirstName = 'John'
DECLARE @LastName VarChar(7) -- String
SET     @LastName = 'Shepard'
DECLARE @Gender Char(1) -- String
SET     @Gender = 'M'
DECLARE @IDENTITY_PARAMETER Decimal
SET     @IDENTITY_PARAMETER = NULL

INSERT INTO "Person"
(
	"FirstName",
	"LastName",
	"Gender"
)
VALUES
(
	CAST(@FirstName AS VARCHAR(4)),
	CAST(@LastName AS VARCHAR(7)),
	CAST(@Gender AS Char(1))
)
RETURNING
	"PersonID"

BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

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
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Firebird.3 Firebird3

DELETE FROM
	"Person" "t1"
WHERE
	"t1"."PersonID" > 4

