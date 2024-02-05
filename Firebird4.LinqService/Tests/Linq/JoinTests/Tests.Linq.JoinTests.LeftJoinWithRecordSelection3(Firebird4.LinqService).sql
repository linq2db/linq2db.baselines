BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Fact')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Fact"';
END

BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Fact')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Fact"
			(
				"Id" Int NOT NULL,

				CONSTRAINT "PK_Fact" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird4 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 3

INSERT INTO "Fact"
(
	"Id"
)
VALUES
(
	@Id
)

BeforeExecute
-- Firebird4 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 4

INSERT INTO "Fact"
(
	"Id"
)
VALUES
(
	@Id
)

BeforeExecute
-- Firebird4 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 5

INSERT INTO "Fact"
(
	"Id"
)
VALUES
(
	@Id
)

BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Tag')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Tag"';
END

BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Tag')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Tag"
			(
				"Id"     Int                                    NOT NULL,
				"FactId" Int                                    NOT NULL,
				"Name"   VarChar(255) CHARACTER SET UNICODE_FSS NOT NULL,

				CONSTRAINT "PK_Tag" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird4 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @FactId Integer -- Int32
SET     @FactId = 3
DECLARE @Name VarChar(4) -- String
SET     @Name = 'Tag3'

INSERT INTO "Tag"
(
	"Id",
	"FactId",
	"Name"
)
VALUES
(
	@Id,
	@FactId,
	@Name
)

BeforeExecute
-- Firebird4 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @FactId Integer -- Int32
SET     @FactId = 3
DECLARE @Name VarChar(4) -- String
SET     @Name = 'Tag3'

INSERT INTO "Tag"
(
	"Id",
	"FactId",
	"Name"
)
VALUES
(
	@Id,
	@FactId,
	@Name
)

BeforeExecute
-- Firebird4 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 3
DECLARE @FactId Integer -- Int32
SET     @FactId = 4
DECLARE @Name VarChar(4) -- String
SET     @Name = 'Tag4'

INSERT INTO "Tag"
(
	"Id",
	"FactId",
	"Name"
)
VALUES
(
	@Id,
	@FactId,
	@Name
)

BeforeExecute
-- Firebird4 Firebird

SELECT
	"fact_1"."Id",
	"tag_1"."Id",
	"tag_1"."FactId",
	"tag_1"."Name"
FROM
	"Fact" "fact_1"
		LEFT JOIN "Tag" "tag_1" ON "tag_1"."FactId" = "fact_1"."Id"
WHERE
	"fact_1"."Id" > 3
ORDER BY
	"fact_1"."Id"

BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Tag')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Tag"';
END

BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Fact')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Fact"';
END

