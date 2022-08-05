﻿BeforeExecute
-- Firebird3 Firebird

SET GENERATOR "PersonID" TO 4

BeforeExecute
-- Firebird3 Firebird

DELETE FROM
	"Person" "t1"
WHERE
	"t1"."PersonID" > 4

BeforeExecute
-- Firebird3 Firebird
DECLARE @Gender Char(1) -- String
SET     @Gender = 'M'
DECLARE @FirstName VarChar(12) -- String
SET     @FirstName = 'FirstName533'
DECLARE @MiddleName VarChar -- String
SET     @MiddleName = NULL
DECLARE @LastName VarChar(11) -- String
SET     @LastName = 'LastName533'
DECLARE @IDENTITY_PARAMETER Decimal
SET     @IDENTITY_PARAMETER = NULL

INSERT INTO "Person"
(
	"PersonID",
	"Gender",
	"FirstName",
	"MiddleName",
	"LastName"
)
VALUES
(
	GEN_ID("PersonID", 1),
	@Gender,
	@FirstName,
	@MiddleName,
	@LastName
)
RETURNING
	"PersonID"

BeforeExecute
-- Firebird3 Firebird
DECLARE @id1 Integer -- Int32
SET     @id1 = 6

SELECT FIRST 1
	"t1"."PersonID",
	"t1"."Gender",
	"t1"."FirstName",
	"t1"."MiddleName",
	"t1"."LastName"
FROM
	"Person" "t1"
WHERE
	"t1"."PersonID" = @id1

BeforeExecute
-- Firebird3 Firebird

DELETE FROM
	"Person" "t1"
WHERE
	"t1"."PersonID" > 4

