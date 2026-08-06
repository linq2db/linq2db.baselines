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
DECLARE @i Integer -- Int32
SET     @i = 0
DECLARE @diagnosis Integer -- Int32
SET     @diagnosis = 3

MERGE INTO "Patient" "t1"
USING (SELECT CAST(@id AS Int) AS "PersonID" FROM rdb$database) "s" ON
(
	"t1"."PersonID" = "s"."PersonID"
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"Diagnosis" = CHAR_LENGTH("t1"."Diagnosis") + CAST(@i AS Int)
WHEN NOT MATCHED THEN
	INSERT
	(
		"PersonID",
		"Diagnosis"
	)
	VALUES
	(
		CAST(@id AS Int),
		CAST(@diagnosis AS Int) + CAST(@i AS Int)
	)

-- Firebird.2.5 Firebird
DECLARE @id Integer -- Int32
SET     @id = 5
DECLARE @i Integer -- Int32
SET     @i = 1
DECLARE @diagnosis Integer -- Int32
SET     @diagnosis = 3

MERGE INTO "Patient" "t1"
USING (SELECT CAST(@id AS Int) AS "PersonID" FROM rdb$database) "s" ON
(
	"t1"."PersonID" = "s"."PersonID"
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"Diagnosis" = CHAR_LENGTH("t1"."Diagnosis") + CAST(@i AS Int)
WHEN NOT MATCHED THEN
	INSERT
	(
		"PersonID",
		"Diagnosis"
	)
	VALUES
	(
		CAST(@id AS Int),
		CAST(@diagnosis AS Int) + CAST(@i AS Int)
	)

-- Firebird.2.5 Firebird
DECLARE @id Integer -- Int32
SET     @id = 5
DECLARE @i Integer -- Int32
SET     @i = 2
DECLARE @diagnosis Integer -- Int32
SET     @diagnosis = 3

MERGE INTO "Patient" "t1"
USING (SELECT CAST(@id AS Int) AS "PersonID" FROM rdb$database) "s" ON
(
	"t1"."PersonID" = "s"."PersonID"
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"Diagnosis" = CHAR_LENGTH("t1"."Diagnosis") + CAST(@i AS Int)
WHEN NOT MATCHED THEN
	INSERT
	(
		"PersonID",
		"Diagnosis"
	)
	VALUES
	(
		CAST(@id AS Int),
		CAST(@diagnosis AS Int) + CAST(@i AS Int)
	)

-- Firebird.2.5 Firebird
DECLARE @id Integer -- Int32
SET     @id = 5

SELECT FIRST 2
	"p"."PersonID",
	"p"."Diagnosis"
FROM
	"Patient" "p"
WHERE
	"p"."PersonID" = @id

