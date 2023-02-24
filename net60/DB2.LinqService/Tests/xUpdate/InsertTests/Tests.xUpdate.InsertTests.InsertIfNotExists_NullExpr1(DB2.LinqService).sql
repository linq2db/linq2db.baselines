BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "test_insert_or_replace"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "test_insert_or_replace"
		(
			"id"         Int           NOT NULL,
			"name"       NVarChar(255)     NULL,
			"created_by" NVarChar(255)     NULL,
			"updated_by" NVarChar(255)     NULL,

			CONSTRAINT "PK_test_insert_or_replace" PRIMARY KEY ("id")
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

MERGE INTO "test_insert_or_replace" "t1"
USING (SELECT 1 AS "id" FROM SYSIBM.SYSDUMMY1 FETCH FIRST 1 ROW ONLY) "s" ON
(
	"t1"."id" = "s"."id"
)
WHEN NOT MATCHED THEN
	INSERT
	(
		"id",
		"name"
	)
	VALUES
	(
		1,
		'test'
	)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

MERGE INTO "test_insert_or_replace" "t1"
USING (SELECT 1 AS "id" FROM SYSIBM.SYSDUMMY1 FETCH FIRST 1 ROW ONLY) "s" ON
(
	"t1"."id" = "s"."id"
)
WHEN NOT MATCHED THEN
	INSERT
	(
		"id",
		"name"
	)
	VALUES
	(
		1,
		'test'
	)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "test_insert_or_replace"';
END

