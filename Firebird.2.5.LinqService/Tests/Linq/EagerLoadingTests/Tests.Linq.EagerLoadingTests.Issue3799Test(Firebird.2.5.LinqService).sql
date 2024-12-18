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
	@Id,
	@ParentId,
	@Name
)

BeforeExecute
-- Firebird.2.5 Firebird
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
	@Id,
	@ParentId,
	@Name
)

BeforeExecute
-- Firebird.2.5 Firebird
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
	@Id,
	@ParentId,
	@Name
)

BeforeExecute
-- Firebird.2.5 Firebird
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
	@Id,
	@ParentId,
	@Name
)

BeforeExecute
-- Firebird.2.5 Firebird
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
	@Id,
	@ParentId,
	@Name
)

BeforeExecute
-- Firebird.2.5 Firebird
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
	@Id,
	@ParentId,
	@Name
)

BeforeExecute
-- Firebird.2.5 Firebird
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
	@Id,
	@ParentId,
	@Name
)

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"m_1"."Children",
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
					"item_1"."Id" = "a_Children"."ParentId" AND "a_Children"."ParentId" IS NOT NULL
			) as "Children"
		FROM
			"Test3799Item" "item_1"
	) "m_1"
		INNER JOIN "Test3799Item" "d" ON "m_1"."Children" = "d"."ParentId" AND "m_1"."Children" IS NOT NULL AND "d"."ParentId" IS NOT NULL OR "m_1"."Children" IS NULL AND "d"."ParentId" IS NULL

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
			"item_1"."Id" = "a_Children"."ParentId" AND "a_Children"."ParentId" IS NOT NULL
	),
	(
		SELECT FIRST 1
			"a_Children_1"."Id"
		FROM
			"Test3799Item" "a_Children_1"
		WHERE
			"item_1"."Id" = "a_Children_1"."ParentId" AND "a_Children_1"."ParentId" IS NOT NULL
	)
FROM
	"Test3799Item" "item_1"

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Test3799Item')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Test3799Item"';
END

