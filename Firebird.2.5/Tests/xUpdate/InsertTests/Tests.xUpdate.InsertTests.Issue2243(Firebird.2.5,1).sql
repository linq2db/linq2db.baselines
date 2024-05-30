﻿BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'test_insert_or_replace')) THEN
		EXECUTE STATEMENT 'DROP TABLE "test_insert_or_replace"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'test_insert_or_replace')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "test_insert_or_replace"
			(
				"id"         Int                                    NOT NULL,
				"name"       VarChar(255) CHARACTER SET UNICODE_FSS,
				"created_by" VarChar(255) CHARACTER SET UNICODE_FSS,
				"updated_by" VarChar(255) CHARACTER SET UNICODE_FSS,

				CONSTRAINT "PK_test_insert_or_replace" PRIMARY KEY ("id")
			)
		';
END

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name VarChar(5) -- String
SET     @Name = 'Test1'
DECLARE @UpdatedBy VarChar -- String
SET     @UpdatedBy = NULL
DECLARE @CreatedBy VarChar(10) -- String
SET     @CreatedBy = 'TEST_USER1'

MERGE INTO "test_insert_or_replace" "t1"
USING (SELECT CAST(@Id AS Int) AS "id" FROM rdb$database) "s" ON
(
	"t1"."id" = "s"."id"
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"name" = CAST(@Name AS VARCHAR(5)),
		"updated_by" = CAST(@UpdatedBy AS VARCHAR(1))
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
		CAST(@Name AS VARCHAR(5)),
		CAST(@CreatedBy AS VARCHAR(10))
	)

BeforeExecute
-- Firebird.2.5 Firebird

SELECT FIRST 2
	"t1"."id",
	"t1"."name",
	"t1"."created_by",
	"t1"."updated_by"
FROM
	"test_insert_or_replace" "t1"

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name VarChar(5) -- String
SET     @Name = 'Test2'
DECLARE @UpdatedBy VarChar(10) -- String
SET     @UpdatedBy = 'TEST_USER1'
DECLARE @CreatedBy VarChar(10) -- String
SET     @CreatedBy = 'TEST_USER1'

MERGE INTO "test_insert_or_replace" "t1"
USING (SELECT CAST(@Id AS Int) AS "id" FROM rdb$database) "s" ON
(
	"t1"."id" = "s"."id"
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"name" = CAST(@Name AS VARCHAR(5)),
		"updated_by" = CAST(@UpdatedBy AS VARCHAR(10))
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
		CAST(@Name AS VARCHAR(5)),
		CAST(@CreatedBy AS VARCHAR(10))
	)

BeforeExecute
-- Firebird.2.5 Firebird

SELECT FIRST 2
	"t1"."id",
	"t1"."name",
	"t1"."created_by",
	"t1"."updated_by"
FROM
	"test_insert_or_replace" "t1"

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'test_insert_or_replace')) THEN
		EXECUTE STATEMENT 'DROP TABLE "test_insert_or_replace"';
END

