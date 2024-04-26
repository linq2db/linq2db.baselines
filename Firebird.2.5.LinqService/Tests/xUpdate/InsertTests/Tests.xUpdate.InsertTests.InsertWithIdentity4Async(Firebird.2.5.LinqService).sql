BeforeExecute
-- Firebird.2.5 Firebird

DELETE FROM
	"Person" "t1"
WHERE
	"t1"."PersonID" > 4

BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)
DECLARE @FirstName VarChar(5) -- String
SET     @FirstName = 'John0'
DECLARE @LastName VarChar(7) -- String
SET     @LastName = 'Shepard'
DECLARE @MiddleName VarChar -- String
SET     @MiddleName = NULL
DECLARE @Gender Char(1) -- String
SET     @Gender = 'M'
DECLARE @IDENTITY_PARAMETER Decimal
SET     @IDENTITY_PARAMETER = NULL

INSERT INTO "Person"
(
	"FirstName",
	"LastName",
	"MiddleName",
	"Gender"
)
VALUES
(
	CAST(@FirstName AS VARCHAR(5)),
	CAST(@LastName AS VARCHAR(7)),
	CAST(@MiddleName AS VARCHAR(1)),
	CAST(@Gender AS Char(1))
)
RETURNING
	"PersonID"

BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)
DECLARE @FirstName VarChar(5) -- String
SET     @FirstName = 'John1'
DECLARE @LastName VarChar(7) -- String
SET     @LastName = 'Shepard'
DECLARE @MiddleName VarChar -- String
SET     @MiddleName = NULL
DECLARE @Gender Char(1) -- String
SET     @Gender = 'M'
DECLARE @IDENTITY_PARAMETER Decimal
SET     @IDENTITY_PARAMETER = NULL

INSERT INTO "Person"
(
	"FirstName",
	"LastName",
	"MiddleName",
	"Gender"
)
VALUES
(
	CAST(@FirstName AS VARCHAR(5)),
	CAST(@LastName AS VARCHAR(7)),
	CAST(@MiddleName AS VARCHAR(1)),
	CAST(@Gender AS Char(1))
)
RETURNING
	"PersonID"

BeforeExecute
-- Firebird.2.5 Firebird

DELETE FROM
	"Person" "t1"
WHERE
	"t1"."PersonID" > 4

