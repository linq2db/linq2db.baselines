BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'test_insert_or_replace')) THEN
		EXECUTE STATEMENT 'DROP TABLE "test_insert_or_replace"';
END

BeforeExecute
-- Firebird.5 Firebird4

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
-- Firebird.5 Firebird4

MERGE INTO "test_insert_or_replace" "t1"
USING (SELECT 1 AS "id" FROM rdb$database) "s" ON
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
-- Firebird.5 Firebird4

MERGE INTO "test_insert_or_replace" "t1"
USING (SELECT 1 AS "id" FROM rdb$database) "s" ON
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
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'test_insert_or_replace')) THEN
		EXECUTE STATEMENT 'DROP TABLE "test_insert_or_replace"';
END

