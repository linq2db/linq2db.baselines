-- DB2 DB2.LUW DB2LUW
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

-- DB2 DB2.LUW DB2LUW
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

-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"xxPatient" "t1"

-- DB2 DB2.LUW DB2LUW
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

-- DB2 DB2.LUW DB2LUW
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

-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"xxPatient" "t1"

