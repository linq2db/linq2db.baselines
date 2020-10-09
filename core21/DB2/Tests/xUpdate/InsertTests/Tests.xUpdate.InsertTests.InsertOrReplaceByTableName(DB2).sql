BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704'
		BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "xxPatient21"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE TABLE "xxPatient21"
(
	"PersonID"  Int           NOT NULL,
	"Diagnosis" NVarChar(255)     NULL,

	CONSTRAINT "PK_xxPatient21" PRIMARY KEY ("PersonID")
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @PersonID Integer(4) -- Int32
SET     @PersonID = 1
DECLARE @Diagnosis VarChar(4) -- String
SET     @Diagnosis = 'ABC1'

MERGE INTO "xxPatient21" "t1"
USING (SELECT @PersonID AS "PersonID" FROM SYSIBM.SYSDUMMY1 FETCH FIRST 1 ROW ONLY) "s" ON
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
		@PersonID,
		@Diagnosis
	)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @PersonID Integer(4) -- Int32
SET     @PersonID = 2
DECLARE @Diagnosis VarChar(4) -- String
SET     @Diagnosis = 'ABC2'

MERGE INTO "xxPatient21" "t1"
USING (SELECT @PersonID AS "PersonID" FROM SYSIBM.SYSDUMMY1 FETCH FIRST 1 ROW ONLY) "s" ON
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
		@PersonID,
		@Diagnosis
	)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT 
	Count(*)
FROM
	"xxPatient21" "t1"

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @PersonID Integer(4) -- Int32
SET     @PersonID = 1
DECLARE @Diagnosis VarChar(4) -- String
SET     @Diagnosis = 'ABC1'

MERGE INTO "xxPatient21" "t1"
USING (SELECT @PersonID AS "PersonID" FROM SYSIBM.SYSDUMMY1 FETCH FIRST 1 ROW ONLY) "s" ON
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
		@PersonID,
		@Diagnosis
	)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @PersonID Integer(4) -- Int32
SET     @PersonID = 2
DECLARE @Diagnosis VarChar(4) -- String
SET     @Diagnosis = 'ABC2'

MERGE INTO "xxPatient21" "t1"
USING (SELECT @PersonID AS "PersonID" FROM SYSIBM.SYSDUMMY1 FETCH FIRST 1 ROW ONLY) "s" ON
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
		@PersonID,
		@Diagnosis
	)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT 
	Count(*)
FROM
	"xxPatient21" "t1"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704'
		BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "xxPatient21"';
END

