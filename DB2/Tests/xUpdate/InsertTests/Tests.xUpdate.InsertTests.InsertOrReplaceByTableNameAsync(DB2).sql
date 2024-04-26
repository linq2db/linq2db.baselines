BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "xxPatient"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

CREATE TABLE "xxPatient"
(
	"PersonID"  Int           NOT NULL,
	"Diagnosis" NVarChar(255)     NULL,

	CONSTRAINT "PK_xxPatient" PRIMARY KEY ("PersonID")
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)
DECLARE @PersonID Integer(4) -- Int32
SET     @PersonID = 1
DECLARE @Diagnosis VarChar(4) -- String
SET     @Diagnosis = 'ABC1'

MERGE INTO "xxPatient" "t1"
USING (SELECT CAST(@PersonID AS Int) AS "PersonID" FROM SYSIBM.SYSDUMMY1 FETCH FIRST 1 ROW ONLY) "s" ON
(
	"t1"."PersonID" = "s"."PersonID"
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"Diagnosis" = CAST(@Diagnosis AS NVarChar(4))
WHEN NOT MATCHED THEN
	INSERT
	(
		"PersonID",
		"Diagnosis"
	)
	VALUES
	(
		CAST(@PersonID AS Int),
		CAST(@Diagnosis AS NVarChar(4))
	)

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)
DECLARE @PersonID Integer(4) -- Int32
SET     @PersonID = 2
DECLARE @Diagnosis VarChar(4) -- String
SET     @Diagnosis = 'ABC2'

MERGE INTO "xxPatient" "t1"
USING (SELECT CAST(@PersonID AS Int) AS "PersonID" FROM SYSIBM.SYSDUMMY1 FETCH FIRST 1 ROW ONLY) "s" ON
(
	"t1"."PersonID" = "s"."PersonID"
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"Diagnosis" = CAST(@Diagnosis AS NVarChar(4))
WHEN NOT MATCHED THEN
	INSERT
	(
		"PersonID",
		"Diagnosis"
	)
	VALUES
	(
		CAST(@PersonID AS Int),
		CAST(@Diagnosis AS NVarChar(4))
	)

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	COUNT(*)
FROM
	"xxPatient" "t1"

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)
DECLARE @PersonID Integer(4) -- Int32
SET     @PersonID = 1
DECLARE @Diagnosis VarChar(4) -- String
SET     @Diagnosis = 'ABC1'

MERGE INTO "xxPatient" "t1"
USING (SELECT CAST(@PersonID AS Int) AS "PersonID" FROM SYSIBM.SYSDUMMY1 FETCH FIRST 1 ROW ONLY) "s" ON
(
	"t1"."PersonID" = "s"."PersonID"
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"Diagnosis" = CAST(@Diagnosis AS NVarChar(4))
WHEN NOT MATCHED THEN
	INSERT
	(
		"PersonID",
		"Diagnosis"
	)
	VALUES
	(
		CAST(@PersonID AS Int),
		CAST(@Diagnosis AS NVarChar(4))
	)

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)
DECLARE @PersonID Integer(4) -- Int32
SET     @PersonID = 2
DECLARE @Diagnosis VarChar(4) -- String
SET     @Diagnosis = 'ABC2'

MERGE INTO "xxPatient" "t1"
USING (SELECT CAST(@PersonID AS Int) AS "PersonID" FROM SYSIBM.SYSDUMMY1 FETCH FIRST 1 ROW ONLY) "s" ON
(
	"t1"."PersonID" = "s"."PersonID"
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"Diagnosis" = CAST(@Diagnosis AS NVarChar(4))
WHEN NOT MATCHED THEN
	INSERT
	(
		"PersonID",
		"Diagnosis"
	)
	VALUES
	(
		CAST(@PersonID AS Int),
		CAST(@Diagnosis AS NVarChar(4))
	)

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	COUNT(*)
FROM
	"xxPatient" "t1"

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "xxPatient"';
END

