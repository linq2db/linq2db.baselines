-- Firebird.2.5 Firebird
DECLARE @FirstName VarChar(4) -- String
SET     @FirstName = 'test'
DECLARE @LastName VarChar(7) -- String
SET     @LastName = 'subject'
DECLARE @MiddleName VarChar -- String
SET     @MiddleName = NULL
DECLARE @Gender Char(1) -- String
SET     @Gender = 'U'
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
	@FirstName,
	@LastName,
	@MiddleName,
	@Gender
)
RETURNING
	"PersonID"

-- Firebird.2.5 Firebird
DECLARE @id Integer -- Int32
SET     @id = 5

MERGE INTO "Patient" "t1"
USING (SELECT CAST(@id AS Int) AS "PersonID" FROM rdb$database) "s" ON
(
	"t1"."PersonID" = "s"."PersonID"
)
WHEN NOT MATCHED THEN
	INSERT
	(
		"PersonID",
		"Diagnosis"
	)
	VALUES
	(
		CAST(@id AS Int),
		'negative'
	)

-- Firebird.2.5 Firebird
DECLARE @id Integer -- Int32
SET     @id = 5

SELECT
	"p"."PersonID",
	"p"."Diagnosis"
FROM
	"Patient" "p"
WHERE
	"p"."PersonID" = @id

-- Firebird.2.5 Firebird
DECLARE @id Integer -- Int32
SET     @id = 5

MERGE INTO "Patient" "t1"
USING (SELECT CAST(@id AS Int) AS "PersonID" FROM rdb$database) "s" ON
(
	"t1"."PersonID" = "s"."PersonID"
)
WHEN NOT MATCHED THEN
	INSERT
	(
		"PersonID",
		"Diagnosis"
	)
	VALUES
	(
		CAST(@id AS Int),
		'positive'
	)

-- Firebird.2.5 Firebird
DECLARE @id Integer -- Int32
SET     @id = 5

SELECT
	"p"."PersonID",
	"p"."Diagnosis"
FROM
	"Patient" "p"
WHERE
	"p"."PersonID" = @id

