BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Fact')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Fact"';
END

BeforeExecute
-- Firebird.5 Firebird4

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
-- Firebird.5 Firebird4

INSERT INTO "Fact"
(
	"Id"
)
SELECT 3 FROM rdb$database UNION ALL
SELECT 4 FROM rdb$database UNION ALL
SELECT 5 FROM rdb$database

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Tag')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Tag"';
END

BeforeExecute
-- Firebird.5 Firebird4

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
-- Firebird.5 Firebird4

INSERT INTO "Tag"
(
	"Id",
	"FactId",
	"Name"
)
SELECT 1,3,CAST('Tag3' AS VarChar(255) CHARACTER SET UNICODE_FSS) FROM rdb$database UNION ALL
SELECT 2,3,'Tag3' FROM rdb$database UNION ALL
SELECT 3,4,'Tag4' FROM rdb$database UNION ALL
SELECT 4,6,'Tag6' FROM rdb$database

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"f"."Id",
	"ft"."Id",
	"ft"."FactId",
	"ft"."Name"
FROM
	"Tag" "ft"
		FULL JOIN "Fact" "f" ON "ft"."FactId" = "f"."Id"
WHERE
	"f"."Id" > 3 AND "f"."Id" IS NOT NULL OR "ft"."FactId" > 3 AND "ft"."FactId" IS NOT NULL

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Tag')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Tag"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Fact')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Fact"';
END

