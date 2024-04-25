BeforeExecute
-- Firebird.5 Firebird4

DELETE FROM
	"Person" "t1"
WHERE
	"t1"."PersonID" > 4

BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)
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
-- Firebird.5 Firebird4

DELETE FROM
	"Person" "t1"
WHERE
	"t1"."PersonID" > 4

