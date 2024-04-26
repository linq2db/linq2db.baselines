BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Fact')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Fact"';
END

BeforeExecute
-- Firebird.2.5 Firebird

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
-- Firebird.2.5 Firebird

INSERT INTO "Fact"
(
	"Id"
)
SELECT 3 FROM rdb$database UNION ALL
SELECT 4 FROM rdb$database UNION ALL
SELECT 5 FROM rdb$database

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Tag')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Tag"';
END

BeforeExecute
-- Firebird.2.5 Firebird

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
-- Firebird.2.5 Firebird

INSERT INTO "Tag"
(
	"Id",
	"FactId",
	"Name"
)
SELECT 1,3,CAST('Tag3' AS VarChar(255) CHARACTER SET UNICODE_FSS) FROM rdb$database UNION ALL
SELECT 2,3,'Tag3' FROM rdb$database UNION ALL
SELECT 3,4,'Tag4' FROM rdb$database

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"fact_1"."Id",
	"leftTag"."Id",
	"leftTag"."FactId",
	"leftTag"."Name"
FROM
	"Fact" "fact_1"
		LEFT JOIN "Tag" "leftTag" ON "fact_1"."Id" = "leftTag"."FactId"
WHERE
	"fact_1"."Id" > 3
ORDER BY
	"fact_1"."Id"

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Tag')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Tag"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Fact')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Fact"';
END

