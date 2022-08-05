﻿BeforeExecute
-- Firebird4 Firebird

SET GENERATOR "PersonID" TO 4

BeforeExecute
-- Firebird4 Firebird
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
	'John',
	'Shepard',
	'M'
)
RETURNING
	"PersonID"

BeforeExecute
-- Firebird4 Firebird (asynchronously)
DECLARE @PersonID Integer -- Int32
SET     @PersonID = 5
DECLARE @Diagnosis VarChar(4) -- String
SET     @Diagnosis = 'abc0'

MERGE INTO "Patient" "t1"
USING (SELECT Cast(@PersonID as Int) AS "PersonID" FROM rdb$database) "s" ON
(
	"t1"."PersonID" = "s"."PersonID"
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"t1"."Diagnosis" = @Diagnosis
WHEN NOT MATCHED THEN
	INSERT
	(
		"PersonID",
		"Diagnosis"
	)
	VALUES
	(
		Cast(@PersonID as Int),
		@Diagnosis
	)

BeforeExecute
-- Firebird4 Firebird (asynchronously)
DECLARE @PersonID Integer -- Int32
SET     @PersonID = 5
DECLARE @Diagnosis VarChar(4) -- String
SET     @Diagnosis = 'abc1'

MERGE INTO "Patient" "t1"
USING (SELECT Cast(@PersonID as Int) AS "PersonID" FROM rdb$database) "s" ON
(
	"t1"."PersonID" = "s"."PersonID"
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"t1"."Diagnosis" = @Diagnosis
WHEN NOT MATCHED THEN
	INSERT
	(
		"PersonID",
		"Diagnosis"
	)
	VALUES
	(
		Cast(@PersonID as Int),
		@Diagnosis
	)

BeforeExecute
-- Firebird4 Firebird (asynchronously)
DECLARE @PersonID Integer -- Int32
SET     @PersonID = 5
DECLARE @Diagnosis VarChar(4) -- String
SET     @Diagnosis = 'abc2'

MERGE INTO "Patient" "t1"
USING (SELECT Cast(@PersonID as Int) AS "PersonID" FROM rdb$database) "s" ON
(
	"t1"."PersonID" = "s"."PersonID"
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"t1"."Diagnosis" = @Diagnosis
WHEN NOT MATCHED THEN
	INSERT
	(
		"PersonID",
		"Diagnosis"
	)
	VALUES
	(
		Cast(@PersonID as Int),
		@Diagnosis
	)

BeforeExecute
-- Firebird4 Firebird (asynchronously)
DECLARE @id Integer -- Int32
SET     @id = 5

SELECT FIRST 2
	"p"."PersonID",
	"p"."Diagnosis"
FROM
	"Patient" "p"
WHERE
	"p"."PersonID" = @id

BeforeExecute
-- Firebird4 Firebird (asynchronously)
DECLARE @id Integer -- Int32
SET     @id = 5

DELETE FROM
	"Patient" "p"
WHERE
	"p"."PersonID" = @id

BeforeExecute
-- Firebird4 Firebird (asynchronously)
DECLARE @id Integer -- Int32
SET     @id = 5

DELETE FROM
	"Person" "t1"
WHERE
	"t1"."PersonID" = @id

