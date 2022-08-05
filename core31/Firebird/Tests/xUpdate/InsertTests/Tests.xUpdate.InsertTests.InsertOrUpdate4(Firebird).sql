﻿BeforeExecute
-- Firebird

SET GENERATOR "PersonID" TO 4

BeforeExecute
-- Firebird
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
-- Firebird
DECLARE @id Integer -- Int32
SET     @id = 5
DECLARE @i Integer -- Int32
SET     @i = 0
DECLARE @diagnosis VarChar(3) -- String
SET     @diagnosis = 'abc'

MERGE INTO "Patient" "t1"
USING (SELECT Cast(@id as Int) AS "PersonID" FROM rdb$database) "s" ON
(
	"t1"."PersonID" = "s"."PersonID"
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"t1"."Diagnosis" = Cast((Char_Length("t1"."Diagnosis") + Cast(@i as Int)) as VarChar(11) CHARACTER SET UNICODE_FSS)
WHEN NOT MATCHED THEN
	INSERT
	(
		"PersonID",
		"Diagnosis"
	)
	VALUES
	(
		Cast(@id as Int),
		Cast((Char_Length(Cast(@diagnosis as VarChar(255) CHARACTER SET UNICODE_FSS)) + Cast(@i as Int)) as VarChar(11) CHARACTER SET UNICODE_FSS)
	)

BeforeExecute
-- Firebird
DECLARE @id Integer -- Int32
SET     @id = 5
DECLARE @i Integer -- Int32
SET     @i = 1
DECLARE @diagnosis VarChar(3) -- String
SET     @diagnosis = 'abc'

MERGE INTO "Patient" "t1"
USING (SELECT Cast(@id as Int) AS "PersonID" FROM rdb$database) "s" ON
(
	"t1"."PersonID" = "s"."PersonID"
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"t1"."Diagnosis" = Cast((Char_Length("t1"."Diagnosis") + Cast(@i as Int)) as VarChar(11) CHARACTER SET UNICODE_FSS)
WHEN NOT MATCHED THEN
	INSERT
	(
		"PersonID",
		"Diagnosis"
	)
	VALUES
	(
		Cast(@id as Int),
		Cast((Char_Length(Cast(@diagnosis as VarChar(255) CHARACTER SET UNICODE_FSS)) + Cast(@i as Int)) as VarChar(11) CHARACTER SET UNICODE_FSS)
	)

BeforeExecute
-- Firebird
DECLARE @id Integer -- Int32
SET     @id = 5
DECLARE @i Integer -- Int32
SET     @i = 2
DECLARE @diagnosis VarChar(3) -- String
SET     @diagnosis = 'abc'

MERGE INTO "Patient" "t1"
USING (SELECT Cast(@id as Int) AS "PersonID" FROM rdb$database) "s" ON
(
	"t1"."PersonID" = "s"."PersonID"
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"t1"."Diagnosis" = Cast((Char_Length("t1"."Diagnosis") + Cast(@i as Int)) as VarChar(11) CHARACTER SET UNICODE_FSS)
WHEN NOT MATCHED THEN
	INSERT
	(
		"PersonID",
		"Diagnosis"
	)
	VALUES
	(
		Cast(@id as Int),
		Cast((Char_Length(Cast(@diagnosis as VarChar(255) CHARACTER SET UNICODE_FSS)) + Cast(@i as Int)) as VarChar(11) CHARACTER SET UNICODE_FSS)
	)

BeforeExecute
-- Firebird
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
-- Firebird
DECLARE @id Integer -- Int32
SET     @id = 5

DELETE FROM
	"Patient" "t1"
WHERE
	"t1"."PersonID" = @id

BeforeExecute
-- Firebird
DECLARE @id Integer -- Int32
SET     @id = 5

DELETE FROM
	"Person" "t1"
WHERE
	"t1"."PersonID" = @id

