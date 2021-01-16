BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE TABLE "test_insert_or_replace"
(
	"id"         Int           NOT NULL,
	"name"       NVarChar(255)     NULL,
	"created_by" NVarChar(255) NOT NULL,
	"updated_by" NVarChar(255)     NULL,

	CONSTRAINT "PK_test_insert_or_replace" PRIMARY KEY ("id")
)

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
USING (SELECT @Id AS "id" FROM SYSIBM.SYSDUMMY1 FETCH FIRST 1 ROW ONLY) "s" ON
(
	"t1"."id" = "s"."id"
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"t1"."name" = @Name,
		"t1"."updated_by" = @UpdatedBy
WHEN NOT MATCHED THEN
	INSERT
	(
		"id",
		"name",
		"created_by"
	)
	VALUES
	(
		@Id,
		@Name,
		@CreatedBy
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
FETCH FIRST 2 ROWS ONLY

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
USING (SELECT @Id AS "id" FROM SYSIBM.SYSDUMMY1 FETCH FIRST 1 ROW ONLY) "s" ON
(
	"t1"."id" = "s"."id"
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"t1"."name" = @Name,
		"t1"."updated_by" = @UpdatedBy
WHEN NOT MATCHED THEN
	INSERT
	(
		"id",
		"name",
		"created_by"
	)
	VALUES
	(
		@Id,
		@Name,
		@CreatedBy
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
FETCH FIRST 2 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE "test_insert_or_replace"

