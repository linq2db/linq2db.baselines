BeforeExecute
-- Firebird.2.5 Firebird

SET GENERATOR "PersonID" TO 4

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @Gender Char(1) -- String
SET     @Gender = 'M'
DECLARE @Name_FirstName VarChar(13) -- String
SET     @Name_FirstName = 'UpdateComplex'
DECLARE @Name_MiddleName VarChar -- String
SET     @Name_MiddleName = NULL
DECLARE @Name_LastName VarChar(5) -- String
SET     @Name_LastName = 'Empty'
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
	CAST(@Gender AS CHAR(1)),
	CAST(@Name_FirstName AS VARCHAR(13)),
	CAST(@Name_MiddleName AS VARCHAR(1)),
	CAST(@Name_LastName AS VARCHAR(5))
)
RETURNING
	"PersonID"

