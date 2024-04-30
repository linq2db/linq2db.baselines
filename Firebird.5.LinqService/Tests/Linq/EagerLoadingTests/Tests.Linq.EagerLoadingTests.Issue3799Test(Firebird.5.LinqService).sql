﻿BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Test3799Item')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Test3799Item"';
END

BeforeExecute
-- Firebird.5 Firebird4

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
-- Firebird.5 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @ParentId Integer -- Int32
SET     @ParentId = NULL
DECLARE @Name VarChar(4) -- String
SET     @Name = 'root'

INSERT INTO "Test3799Item"
(
	"Id",
	"ParentId",
	"Name"
)
VALUES
(
	CAST(@Id AS Int),
	CAST(@ParentId AS Int),
	CAST(@Name AS VARCHAR(4))
)

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @ParentId Integer -- Int32
SET     @ParentId = 1
DECLARE @Name VarChar(7) -- String
SET     @Name = 'child 1'

INSERT INTO "Test3799Item"
(
	"Id",
	"ParentId",
	"Name"
)
VALUES
(
	CAST(@Id AS Int),
	CAST(@ParentId AS Int),
	CAST(@Name AS VARCHAR(7))
)

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 3
DECLARE @ParentId Integer -- Int32
SET     @ParentId = 2
DECLARE @Name VarChar(9) -- String
SET     @Name = 'child 1.1'

INSERT INTO "Test3799Item"
(
	"Id",
	"ParentId",
	"Name"
)
VALUES
(
	CAST(@Id AS Int),
	CAST(@ParentId AS Int),
	CAST(@Name AS VARCHAR(9))
)

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 4
DECLARE @ParentId Integer -- Int32
SET     @ParentId = 2
DECLARE @Name VarChar(9) -- String
SET     @Name = 'child 1.2'

INSERT INTO "Test3799Item"
(
	"Id",
	"ParentId",
	"Name"
)
VALUES
(
	CAST(@Id AS Int),
	CAST(@ParentId AS Int),
	CAST(@Name AS VARCHAR(9))
)

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 5
DECLARE @ParentId Integer -- Int32
SET     @ParentId = 1
DECLARE @Name VarChar(7) -- String
SET     @Name = 'child 2'

INSERT INTO "Test3799Item"
(
	"Id",
	"ParentId",
	"Name"
)
VALUES
(
	CAST(@Id AS Int),
	CAST(@ParentId AS Int),
	CAST(@Name AS VARCHAR(7))
)

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 6
DECLARE @ParentId Integer -- Int32
SET     @ParentId = 5
DECLARE @Name VarChar(9) -- String
SET     @Name = 'child 2.1'

INSERT INTO "Test3799Item"
(
	"Id",
	"ParentId",
	"Name"
)
VALUES
(
	CAST(@Id AS Int),
	CAST(@ParentId AS Int),
	CAST(@Name AS VARCHAR(9))
)

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 7
DECLARE @ParentId Integer -- Int32
SET     @ParentId = 5
DECLARE @Name VarChar(9) -- String
SET     @Name = 'child 2.1'

INSERT INTO "Test3799Item"
(
	"Id",
	"ParentId",
	"Name"
)
VALUES
(
	CAST(@Id AS Int),
	CAST(@ParentId AS Int),
	CAST(@Name AS VARCHAR(9))
)

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"m_1"."Id",
	"d"."Name"
FROM
	(
		SELECT DISTINCT
			"t1"."Id"
		FROM
			"Test3799Item" "item_1"
				LEFT JOIN LATERAL (
					SELECT
						"a_Children"."Id"
					FROM
						"Test3799Item" "a_Children"
					WHERE
						"item_1"."Id" = "a_Children"."ParentId"
					FETCH NEXT 1 ROWS ONLY
				) "t1" ON 1=1
	) "m_1"
		INNER JOIN "Test3799Item" "d" ON ("m_1"."Id" = "d"."ParentId" OR "m_1"."Id" IS NULL AND "d"."ParentId" IS NULL)

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"item_1"."Name",
	"t1"."Name",
	"t1"."Id"
FROM
	"Test3799Item" "item_1"
		LEFT JOIN LATERAL (
			SELECT
				"a_Children"."Name",
				"a_Children"."Id"
			FROM
				"Test3799Item" "a_Children"
			WHERE
				"item_1"."Id" = "a_Children"."ParentId"
			FETCH NEXT 1 ROWS ONLY
		) "t1" ON 1=1

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Test3799Item')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Test3799Item"';
END

