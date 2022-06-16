BeforeExecute
-- Firebird3 Firebird

SET GENERATOR "PersonID" TO 4

BeforeExecute
-- Firebird3 Firebird
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
-- Firebird3 Firebird
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
-- Firebird3 Firebird
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
-- Firebird3 Firebird
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
-- Firebird3 Firebird
DECLARE @take Integer -- Int32
SET     @take = 2
DECLARE @id Integer -- Int32
SET     @id = 5

SELECT FIRST @take
	"p"."PersonID",
	"p"."Diagnosis"
FROM
	"Patient" "p"
WHERE
	"p"."PersonID" = @id

BeforeExecute
-- Firebird3 Firebird
DECLARE @id Integer -- Int32
SET     @id = 5

DELETE FROM
	"Patient" "t1"
WHERE
	"t1"."PersonID" = @id

BeforeExecute
-- Firebird3 Firebird
DECLARE @id Integer -- Int32
SET     @id = 5

DELETE FROM
	"Person" "t1"
WHERE
	"t1"."PersonID" = @id

