BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'xxPatient11')) THEN
		EXECUTE STATEMENT 'DROP TABLE "xxPatient11"';
END

BeforeExecute
-- Firebird

CREATE TABLE "xxPatient11"
(
	"PersonID"  Int                                    NOT NULL,
	"Diagnosis" VarChar(255) CHARACTER SET UNICODE_FSS,

	CONSTRAINT "PK_xxPatient11" PRIMARY KEY ("PersonID")
)

BeforeExecute
-- Firebird
DECLARE @PersonID Integer -- Int32
SET     @PersonID = 1
DECLARE @Diagnosis VarChar(4) -- String
SET     @Diagnosis = 'ABC1'

MERGE INTO "xxPatient11" "t1"
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
-- Firebird
DECLARE @PersonID Integer -- Int32
SET     @PersonID = 2
DECLARE @Diagnosis VarChar(4) -- String
SET     @Diagnosis = 'ABC2'

MERGE INTO "xxPatient11" "t1"
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
-- Firebird
DECLARE @PersonID Integer -- Int32
SET     @PersonID = 1
DECLARE @Diagnosis VarChar(4) -- String
SET     @Diagnosis = 'ABC1'

MERGE INTO "xxPatient11" "t1"
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
-- Firebird
DECLARE @PersonID Integer -- Int32
SET     @PersonID = 2
DECLARE @Diagnosis VarChar(4) -- String
SET     @Diagnosis = 'ABC2'

MERGE INTO "xxPatient11" "t1"
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
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'xxPatient11')) THEN
		EXECUTE STATEMENT 'DROP TABLE "xxPatient11"';
END

