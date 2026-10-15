-- Firebird.5 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @FirstName VarChar(4) -- String
SET     @FirstName = 'John'
DECLARE @MiddleName VarChar(1) -- String
SET     @MiddleName = 'Q'
DECLARE @Age Integer -- Int32
SET     @Age = 42

INSERT INTO "GeneratedScaffoldPerson"
(
	"PersonID",
	"FirstName",
	"MiddleName",
	"Age"
)
VALUES
(
	@Id,
	@FirstName,
	@MiddleName,
	@Age
)

-- Firebird.5 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @FirstName VarChar(4) -- String
SET     @FirstName = 'Jane'
DECLARE @MiddleName VarChar -- String
SET     @MiddleName = NULL
DECLARE @Age Integer -- Int32
SET     @Age = NULL

INSERT INTO "GeneratedScaffoldPerson"
(
	"PersonID",
	"FirstName",
	"MiddleName",
	"Age"
)
VALUES
(
	@Id,
	@FirstName,
	@MiddleName,
	@Age
)

-- Firebird.5 Firebird4
SELECT
	"p"."PersonID",
	"p"."FirstName",
	"p"."MiddleName",
	"p"."Age"
FROM
	"GeneratedScaffoldPerson" "p"
WHERE
	"p"."PersonID" = 1
FETCH NEXT 2 ROWS ONLY

-- Firebird.5 Firebird4
SELECT
	"p"."PersonID",
	"p"."FirstName",
	"p"."MiddleName",
	"p"."Age"
FROM
	"GeneratedScaffoldPerson" "p"
WHERE
	"p"."PersonID" = 2
FETCH NEXT 2 ROWS ONLY

