﻿BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Test3799Item')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Test3799Item"';
END

BeforeExecute
-- Firebird.3 Firebird3

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
-- Firebird.3 Firebird3

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
-- Firebird.3 Firebird3

SELECT
	"m_1"."Children",
	"d"."Name"
FROM
	(
		SELECT DISTINCT
			"t1"."Children"
		FROM
			"Test3799Item" "item_1"
				LEFT JOIN (
					SELECT
						"a_Children"."Id" as "Children",
						ROW_NUMBER() OVER (PARTITION BY "a_Children"."ParentId" ORDER BY "a_Children"."ParentId") as "rn",
						"a_Children"."ParentId"
					FROM
						"Test3799Item" "a_Children"
				) "t1" ON "item_1"."Id" = "t1"."ParentId" AND "t1"."rn" <= 1
	) "m_1"
		INNER JOIN "Test3799Item" "d" ON "m_1"."Children" = "d"."ParentId" OR "m_1"."Children" IS NULL AND "d"."ParentId" IS NULL

BeforeExecute
DisposeTransaction
BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"item_1"."Name",
	"t1"."Name",
	"t1"."Children"
FROM
	"Test3799Item" "item_1"
		LEFT JOIN (
			SELECT
				"a_Children"."Name",
				"a_Children"."Id" as "Children",
				ROW_NUMBER() OVER (PARTITION BY "a_Children"."ParentId" ORDER BY "a_Children"."ParentId") as "rn",
				"a_Children"."ParentId"
			FROM
				"Test3799Item" "a_Children"
		) "t1" ON "item_1"."Id" = "t1"."ParentId" AND "t1"."rn" <= 1

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Test3799Item')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Test3799Item"';
END

