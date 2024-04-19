BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)
DECLARE @FirstName VarChar(6) -- String
SET     @FirstName = 'Steven'
DECLARE @LastName VarChar(4) -- String
SET     @LastName = 'King'
DECLARE @MiddleName VarChar -- String
SET     @MiddleName = NULL
DECLARE @Gender Char(1) -- String
SET     @Gender = 'M'
DECLARE @IDENTITY_PARAMETER Decimal
SET     @IDENTITY_PARAMETER = NULL

INSERT INTO "xxPerson_fl_31"
(
	"FirstName",
	"LastName",
	"MiddleName",
	"Gender"
)
VALUES
(
	CAST(@FirstName AS VARCHAR(6)),
	CAST(@LastName AS VARCHAR(4)),
	CAST(@MiddleName AS VARCHAR(8191)),
	CAST(@Gender AS Char(1))
)
RETURNING
	"PersonID"

BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)
DECLARE @FirstName VarChar(6) -- String
SET     @FirstName = 'Steven'
DECLARE @LastName VarChar(4) -- String
SET     @LastName = 'King'
DECLARE @MiddleName VarChar -- String
SET     @MiddleName = NULL
DECLARE @Gender Char(1) -- String
SET     @Gender = 'M'
DECLARE @IDENTITY_PARAMETER Decimal
SET     @IDENTITY_PARAMETER = NULL

INSERT INTO "xxPerson_fl_31"
(
	"FirstName",
	"LastName",
	"MiddleName",
	"Gender"
)
VALUES
(
	CAST(@FirstName AS VARCHAR(6)),
	CAST(@LastName AS VARCHAR(4)),
	CAST(@MiddleName AS VARCHAR(8191)),
	CAST(@Gender AS Char(1))
)
RETURNING
	"PersonID"

