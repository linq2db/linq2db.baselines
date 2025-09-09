BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'xxPatient19')) THEN
		EXECUTE STATEMENT 'DROP TABLE "xxPatient19"';
END

BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

CREATE TABLE "xxPatient19"
(
	"PersonID"  Int                                    NOT NULL,
	"Diagnosis" VarChar(255) CHARACTER SET UNICODE_FSS,

	CONSTRAINT "PK_xxPatient19" PRIMARY KEY ("PersonID")
)

BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)
DECLARE @PersonID Integer -- Int32
SET     @PersonID = 1
DECLARE @Diagnosis VarChar(4) -- String
SET     @Diagnosis = 'ABC1'

MERGE INTO "xxPatient19" "t1"
USING (SELECT CAST(@PersonID AS Int) AS "PersonID" FROM rdb$database) "s" ON
(
	"t1"."PersonID" = "s"."PersonID"
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"Diagnosis" = CAST(@Diagnosis AS VARCHAR(4))
WHEN NOT MATCHED THEN
	INSERT
	(
		"PersonID",
		"Diagnosis"
	)
	VALUES
	(
		CAST(@PersonID AS Int),
		CAST(@Diagnosis AS VARCHAR(4))
	)

BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)
DECLARE @PersonID Integer -- Int32
SET     @PersonID = 2
DECLARE @Diagnosis VarChar(4) -- String
SET     @Diagnosis = 'ABC2'

MERGE INTO "xxPatient19" "t1"
USING (SELECT CAST(@PersonID AS Int) AS "PersonID" FROM rdb$database) "s" ON
(
	"t1"."PersonID" = "s"."PersonID"
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"Diagnosis" = CAST(@Diagnosis AS VARCHAR(4))
WHEN NOT MATCHED THEN
	INSERT
	(
		"PersonID",
		"Diagnosis"
	)
	VALUES
	(
		CAST(@PersonID AS Int),
		CAST(@Diagnosis AS VARCHAR(4))
	)

BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

SELECT
	COUNT(*)
FROM
	"xxPatient19" "t1"

BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)
DECLARE @PersonID Integer -- Int32
SET     @PersonID = 1
DECLARE @Diagnosis VarChar(4) -- String
SET     @Diagnosis = 'ABC1'

MERGE INTO "xxPatient19" "t1"
USING (SELECT CAST(@PersonID AS Int) AS "PersonID" FROM rdb$database) "s" ON
(
	"t1"."PersonID" = "s"."PersonID"
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"Diagnosis" = CAST(@Diagnosis AS VARCHAR(4))
WHEN NOT MATCHED THEN
	INSERT
	(
		"PersonID",
		"Diagnosis"
	)
	VALUES
	(
		CAST(@PersonID AS Int),
		CAST(@Diagnosis AS VARCHAR(4))
	)

BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)
DECLARE @PersonID Integer -- Int32
SET     @PersonID = 2
DECLARE @Diagnosis VarChar(4) -- String
SET     @Diagnosis = 'ABC2'

MERGE INTO "xxPatient19" "t1"
USING (SELECT CAST(@PersonID AS Int) AS "PersonID" FROM rdb$database) "s" ON
(
	"t1"."PersonID" = "s"."PersonID"
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"Diagnosis" = CAST(@Diagnosis AS VARCHAR(4))
WHEN NOT MATCHED THEN
	INSERT
	(
		"PersonID",
		"Diagnosis"
	)
	VALUES
	(
		CAST(@PersonID AS Int),
		CAST(@Diagnosis AS VARCHAR(4))
	)

BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

SELECT
	COUNT(*)
FROM
	"xxPatient19" "t1"

BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'xxPatient19')) THEN
		EXECUTE STATEMENT 'DROP TABLE "xxPatient19"';
END

