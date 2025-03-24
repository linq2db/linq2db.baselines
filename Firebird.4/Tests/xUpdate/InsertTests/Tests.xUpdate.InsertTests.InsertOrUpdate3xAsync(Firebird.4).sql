﻿BeforeExecute
--  Firebird.4 Firebird4

SET GENERATOR "PersonID" TO 4

BeforeExecute
--  Firebird.4 Firebird4
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

BeforeExecute
--  Firebird.4 Firebird4 (asynchronously)
DECLARE @id2 Integer -- Int32
SET     @id2 = 5
DECLARE @i Integer -- Int32
SET     @i = 0
DECLARE @id Integer -- Int32
SET     @id = 5

MERGE INTO "Patient" "t1"
USING (SELECT CAST(@id2 AS Int) AS "PersonID" FROM rdb$database) "s" ON
(
	"t1"."PersonID" = "s"."PersonID"
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"Diagnosis" = Char_Length("t1"."Diagnosis") + CAST(@i AS Int)
WHEN NOT MATCHED THEN
	INSERT
	(
		"PersonID",
		"Diagnosis"
	)
	VALUES
	(
		CAST(@id AS Int),
		'abc'
	)

BeforeExecute
--  Firebird.4 Firebird4 (asynchronously)
DECLARE @id2 Integer -- Int32
SET     @id2 = 5
DECLARE @i Integer -- Int32
SET     @i = 1
DECLARE @id Integer -- Int32
SET     @id = 5

MERGE INTO "Patient" "t1"
USING (SELECT CAST(@id2 AS Int) AS "PersonID" FROM rdb$database) "s" ON
(
	"t1"."PersonID" = "s"."PersonID"
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"Diagnosis" = Char_Length("t1"."Diagnosis") + CAST(@i AS Int)
WHEN NOT MATCHED THEN
	INSERT
	(
		"PersonID",
		"Diagnosis"
	)
	VALUES
	(
		CAST(@id AS Int),
		'abc'
	)

BeforeExecute
--  Firebird.4 Firebird4 (asynchronously)
DECLARE @id2 Integer -- Int32
SET     @id2 = 5
DECLARE @i Integer -- Int32
SET     @i = 2
DECLARE @id Integer -- Int32
SET     @id = 5

MERGE INTO "Patient" "t1"
USING (SELECT CAST(@id2 AS Int) AS "PersonID" FROM rdb$database) "s" ON
(
	"t1"."PersonID" = "s"."PersonID"
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"Diagnosis" = Char_Length("t1"."Diagnosis") + CAST(@i AS Int)
WHEN NOT MATCHED THEN
	INSERT
	(
		"PersonID",
		"Diagnosis"
	)
	VALUES
	(
		CAST(@id AS Int),
		'abc'
	)

BeforeExecute
--  Firebird.4 Firebird4 (asynchronously)
DECLARE @id Integer -- Int32
SET     @id = 5

SELECT
	"p"."PersonID",
	"p"."Diagnosis"
FROM
	"Patient" "p"
WHERE
	"p"."PersonID" = @id
FETCH NEXT 2 ROWS ONLY

