BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Test3799Item')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Test3799Item"';
END

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Test3799Item')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Test3799Item"
			(
				"Id"       Int                                    NOT NULL,
				"ParentId" Int,
				"Name"     VarChar(255) CHARACTER SET UNICODE_FSS NOT NULL,

				CONSTRAINT "PK_Test3799Item" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird3 Firebird

INSERT INTO "Test3799Item"
(
	"Id",
	"ParentId",
	"Name"
)
SELECT 1,NULL,CAST('root' AS VarChar(255) CHARACTER SET UNICODE_FSS) FROM rdb$database UNION ALL
SELECT 2,1,'child 1' FROM rdb$database UNION ALL
SELECT 3,2,'child 1.1' FROM rdb$database UNION ALL
SELECT 4,2,'child 1.2' FROM rdb$database UNION ALL
SELECT 5,1,'child 2' FROM rdb$database UNION ALL
SELECT 6,5,'child 2.1' FROM rdb$database UNION ALL
SELECT 7,5,'child 2.1' FROM rdb$database

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- Firebird3 Firebird

SELECT
	"key_data_result"."Id",
	"key_data_result"."Id_1",
	"detail_1"."Name"
FROM
	(
		SELECT DISTINCT
			"detail"."Id",
			"item_1"."Id" as "Id_1"
		FROM
			"Test3799Item" "item_1"
				INNER JOIN "Test3799Item" "detail" ON "item_1"."Id" = "detail"."ParentId"
	) "key_data_result"
		INNER JOIN "Test3799Item" "detail_1" ON "key_data_result"."Id" = "detail_1"."ParentId"

BeforeExecute
-- Firebird3 Firebird

SELECT
	"item_1"."Id",
	"detail"."Name",
	"detail"."Id"
FROM
	"Test3799Item" "item_1"
		INNER JOIN "Test3799Item" "detail" ON "item_1"."Id" = "detail"."ParentId"

BeforeExecute
DisposeTransaction
BeforeExecute
-- Firebird3 Firebird

SELECT
	"item_1"."Name",
	"item_1"."Id"
FROM
	"Test3799Item" "item_1"

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Test3799Item')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Test3799Item"';
END

