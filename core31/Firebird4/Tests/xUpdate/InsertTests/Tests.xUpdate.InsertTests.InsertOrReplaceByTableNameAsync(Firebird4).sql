﻿BeforeExecute
-- Firebird4 Firebird (asynchronously)

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'xxPatient12')) THEN
		EXECUTE STATEMENT 'DROP TABLE "xxPatient12"';
END

BeforeExecute
-- Firebird4 Firebird (asynchronously)

CREATE TABLE "xxPatient12"
(
	"PersonID"  Int                                    NOT NULL,
	"Diagnosis" VarChar(255) CHARACTER SET UNICODE_FSS,

	CONSTRAINT "PK_xxPatient12" PRIMARY KEY ("PersonID")
)

BeforeExecute
-- Firebird4 Firebird (asynchronously)
DECLARE @PersonID Integer -- Int32
SET     @PersonID = 1
DECLARE @Diagnosis VarChar(4) -- String
SET     @Diagnosis = 'ABC1'

MERGE INTO "xxPatient12" "t1"
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
SET     @PersonID = 2
DECLARE @Diagnosis VarChar(4) -- String
SET     @Diagnosis = 'ABC2'

MERGE INTO "xxPatient12" "t1"
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

SELECT
	Count(*)
FROM
	"xxPatient12" "t1"

BeforeExecute
-- Firebird4 Firebird (asynchronously)
DECLARE @PersonID Integer -- Int32
SET     @PersonID = 1
DECLARE @Diagnosis VarChar(4) -- String
SET     @Diagnosis = 'ABC1'

MERGE INTO "xxPatient12" "t1"
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
SET     @PersonID = 2
DECLARE @Diagnosis VarChar(4) -- String
SET     @Diagnosis = 'ABC2'

MERGE INTO "xxPatient12" "t1"
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

SELECT
	Count(*)
FROM
	"xxPatient12" "t1"

BeforeExecute
-- Firebird4 Firebird (asynchronously)

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'xxPatient12')) THEN
		EXECUTE STATEMENT 'DROP TABLE "xxPatient12"';
END

