﻿BeforeExecute
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
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Name VarChar(5) -- String
SET     @Name = 'Test1'
DECLARE @UpdatedBy VarChar -- String
SET     @UpdatedBy = NULL
DECLARE @CreatedBy VarChar(10) -- String
SET     @CreatedBy = 'TEST_USER1'

MERGE INTO "test_insert_or_replace" "t1"
USING (SELECT CAST(@Id AS Int) AS "id" FROM SYSIBM.SYSDUMMY1 FETCH FIRST 1 ROW ONLY) "s" ON
(
	"t1"."id" = "s"."id"
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"name" = CAST(@Name AS NVarChar(5)),
		"updated_by" = CAST(@UpdatedBy AS NVarChar(255))
WHEN NOT MATCHED THEN
	INSERT
	(
		"id",
		"name",
		"created_by"
	)
	VALUES
	(
		CAST(@Id AS Int),
		CAST(@Name AS NVarChar(5)),
		CAST(@CreatedBy AS NVarChar(10))
	)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."id",
	"t1"."name",
	"t1"."created_by",
	"t1"."updated_by"
FROM
	"test_insert_or_replace" "t1"
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Name VarChar(5) -- String
SET     @Name = 'Test2'
DECLARE @UpdatedBy VarChar(10) -- String
SET     @UpdatedBy = 'TEST_USER1'
DECLARE @CreatedBy VarChar(10) -- String
SET     @CreatedBy = 'TEST_USER1'

MERGE INTO "test_insert_or_replace" "t1"
USING (SELECT CAST(@Id AS Int) AS "id" FROM SYSIBM.SYSDUMMY1 FETCH FIRST 1 ROW ONLY) "s" ON
(
	"t1"."id" = "s"."id"
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"name" = CAST(@Name AS NVarChar(5)),
		"updated_by" = CAST(@UpdatedBy AS NVarChar(10))
WHEN NOT MATCHED THEN
	INSERT
	(
		"id",
		"name",
		"created_by"
	)
	VALUES
	(
		CAST(@Id AS Int),
		CAST(@Name AS NVarChar(5)),
		CAST(@CreatedBy AS NVarChar(10))
	)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."id",
	"t1"."name",
	"t1"."created_by",
	"t1"."updated_by"
FROM
	"test_insert_or_replace" "t1"
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "test_insert_or_replace"';
END

