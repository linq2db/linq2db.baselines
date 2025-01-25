BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Test3799Item')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Test3799Item"';
END

BeforeExecute
-- Firebird.2.5 Firebird

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
-- Firebird.2.5 Firebird

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
-- Firebird.2.5 Firebird

SELECT
	"m_1"."Id",
	"d"."Name"
FROM
	(
		SELECT DISTINCT
			(
				SELECT FIRST 1
					"a_Children"."Id"
				FROM
					"Test3799Item" "a_Children"
				WHERE
					"item_1"."Id" = "a_Children"."ParentId"
			) as "Id"
		FROM
			"Test3799Item" "item_1"
	) "m_1"
		INNER JOIN "Test3799Item" "d" ON ("m_1"."Id" = "d"."ParentId" OR "m_1"."Id" IS NULL AND "d"."ParentId" IS NULL)

BeforeExecute
DisposeTransaction
BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"item_1"."Name",
	(
		SELECT FIRST 1
			"a_Children"."Name"
		FROM
			"Test3799Item" "a_Children"
		WHERE
			"item_1"."Id" = "a_Children"."ParentId"
	),
	(
		SELECT FIRST 1
			"a_Children_1"."Id"
		FROM
			"Test3799Item" "a_Children_1"
		WHERE
			"item_1"."Id" = "a_Children_1"."ParentId"
	)
FROM
	"Test3799Item" "item_1"

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Test3799Item')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Test3799Item"';
END

