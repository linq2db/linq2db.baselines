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
	'test',
	'subject',
	'U'
)
RETURNING
	"PersonID"

BeforeExecute
-- Firebird4 Firebird
DECLARE @id Integer -- Int32
SET     @id = 5

MERGE INTO "Patient" "t1"
USING (SELECT Cast(@id as Int) AS "PersonID" FROM rdb$database) "s" ON
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
		Cast(@id as Int),
		'negative'
	)

BeforeExecute
-- Firebird4 Firebird
DECLARE @id Integer -- Int32
SET     @id = 5

SELECT
	"p"."PersonID",
	"p"."Diagnosis"
FROM
	"Patient" "p"
WHERE
	"p"."PersonID" = @id

BeforeExecute
-- Firebird4 Firebird
DECLARE @id Integer -- Int32
SET     @id = 5

MERGE INTO "Patient" "t1"
USING (SELECT Cast(@id as Int) AS "PersonID" FROM rdb$database) "s" ON
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
		Cast(@id as Int),
		'positive'
	)

BeforeExecute
-- Firebird4 Firebird
DECLARE @id Integer -- Int32
SET     @id = 5

SELECT
	"p"."PersonID",
	"p"."Diagnosis"
FROM
	"Patient" "p"
WHERE
	"p"."PersonID" = @id

BeforeExecute
-- Firebird4 Firebird
DECLARE @id Integer -- Int32
SET     @id = 5

DELETE FROM
	"Patient" "t1"
WHERE
	"t1"."PersonID" = @id

BeforeExecute
-- Firebird4 Firebird
DECLARE @id Integer -- Int32
SET     @id = 5

DELETE FROM
	"Person" "t1"
WHERE
	"t1"."PersonID" = @id

