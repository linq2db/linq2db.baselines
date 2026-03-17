-- Firebird.5 Firebird4
DECLARE @PersonID Integer -- Int32
SET     @PersonID = 1
DECLARE @Diagnosis VarChar(4) -- String
SET     @Diagnosis = 'ABC1'

MERGE INTO "xxPatient" "t1"
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

-- Firebird.5 Firebird4
DECLARE @PersonID Integer -- Int32
SET     @PersonID = 2
DECLARE @Diagnosis VarChar(4) -- String
SET     @Diagnosis = 'ABC2'

MERGE INTO "xxPatient" "t1"
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

-- Firebird.5 Firebird4

SELECT
	COUNT(*)
FROM
	"xxPatient" "t1"

-- Firebird.5 Firebird4
DECLARE @PersonID Integer -- Int32
SET     @PersonID = 1
DECLARE @Diagnosis VarChar(4) -- String
SET     @Diagnosis = 'ABC1'

MERGE INTO "xxPatient" "t1"
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

-- Firebird.5 Firebird4
DECLARE @PersonID Integer -- Int32
SET     @PersonID = 2
DECLARE @Diagnosis VarChar(4) -- String
SET     @Diagnosis = 'ABC2'

MERGE INTO "xxPatient" "t1"
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

-- Firebird.5 Firebird4

SELECT
	COUNT(*)
FROM
	"xxPatient" "t1"

