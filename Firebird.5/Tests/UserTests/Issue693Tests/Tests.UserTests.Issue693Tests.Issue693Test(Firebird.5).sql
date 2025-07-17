BeforeExecute
-- Firebird.5 Firebird4
DECLARE @Gender Char(1) -- String
SET     @Gender = 'M'
DECLARE @FirstName VarChar(1) -- String
SET     @FirstName = 'a'
DECLARE @MiddleName VarChar(1) -- String
SET     @MiddleName = 'A'
DECLARE @LastName VarChar(1) -- String
SET     @LastName = 'b'
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
-- Firebird.5 Firebird4
DECLARE @Gender Char(1) -- String
SET     @Gender = 'M'
DECLARE @FirstName VarChar(1) -- String
SET     @FirstName = 'c'
DECLARE @MiddleName VarChar -- String
SET     @MiddleName = NULL
DECLARE @LastName VarChar(1) -- String
SET     @LastName = 'd'
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
-- Firebird.5 Firebird4
DECLARE @id1 Integer -- Int32
SET     @id1 = 6

SELECT
	"t1"."PersonID",
	"t1"."Gender",
	"t1"."FirstName",
	"t1"."MiddleName",
	"t1"."LastName"
FROM
	"Person" "t1"
WHERE
	"t1"."PersonID" = @id1
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @id2 Integer -- Int32
SET     @id2 = 8

SELECT
	"t1"."PersonID",
	"t1"."Gender",
	"t1"."FirstName",
	"t1"."MiddleName",
	"t1"."LastName"
FROM
	"Person" "t1"
WHERE
	"t1"."PersonID" = @id2
FETCH NEXT 1 ROWS ONLY

