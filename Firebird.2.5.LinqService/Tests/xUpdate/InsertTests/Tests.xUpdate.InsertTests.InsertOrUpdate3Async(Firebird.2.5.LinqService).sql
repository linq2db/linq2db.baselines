BeforeExecute
-- Firebird.2.5 Firebird

SET GENERATOR "PersonID" TO 4

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @FirstName VarChar(4) -- String
SET     @FirstName = 'John'
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
	CAST(@FirstName AS VARCHAR(4)),
	CAST(@LastName AS VARCHAR(7)),
	CAST(@MiddleName AS VARCHAR(1)),
	CAST(@Gender AS Char(1))
)
RETURNING
	"PersonID"

