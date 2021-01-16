BeforeExecute
-- Firebird3 Firebird

CREATE TABLE "test_insert_or_replace"
(
	"id"         Int                                    NOT NULL,
	"name"       VarChar(255) CHARACTER SET UNICODE_FSS,
	"created_by" VarChar(255) CHARACTER SET UNICODE_FSS NOT NULL,
	"updated_by" VarChar(255) CHARACTER SET UNICODE_FSS,

	CONSTRAINT "PK_test_insert_or_replace" PRIMARY KEY ("id")
)

BeforeExecute
-- Firebird3 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name VarChar(5) -- String
SET     @Name = 'Test1'
DECLARE @UpdatedBy VarChar -- String
SET     @UpdatedBy = NULL
DECLARE @CreatedBy VarChar(10) -- String
SET     @CreatedBy = 'TEST_USER1'

MERGE INTO "test_insert_or_replace" "t1"
USING (SELECT Cast(@Id as Int) AS "id" FROM rdb$database) "s" ON
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
		Cast(@Id as Int),
		@Name,
		@CreatedBy
	)

BeforeExecute
-- Firebird3 Firebird
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT FIRST @take
	"t1"."id",
	"t1"."name",
	"t1"."created_by",
	"t1"."updated_by"
FROM
	"test_insert_or_replace" "t1"

BeforeExecute
-- Firebird3 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name VarChar(5) -- String
SET     @Name = 'Test2'
DECLARE @UpdatedBy VarChar(10) -- String
SET     @UpdatedBy = 'TEST_USER1'
DECLARE @CreatedBy VarChar(10) -- String
SET     @CreatedBy = 'TEST_USER1'

MERGE INTO "test_insert_or_replace" "t1"
USING (SELECT Cast(@Id as Int) AS "id" FROM rdb$database) "s" ON
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
		Cast(@Id as Int),
		@Name,
		@CreatedBy
	)

BeforeExecute
-- Firebird3 Firebird
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT FIRST @take
	"t1"."id",
	"t1"."name",
	"t1"."created_by",
	"t1"."updated_by"
FROM
	"test_insert_or_replace" "t1"

BeforeExecute
-- Firebird3 Firebird

DROP TABLE "test_insert_or_replace"

