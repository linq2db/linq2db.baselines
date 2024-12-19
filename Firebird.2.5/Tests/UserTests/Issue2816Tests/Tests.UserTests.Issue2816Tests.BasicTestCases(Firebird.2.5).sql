BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue2816Table')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue2816Table"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue2816Table')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Issue2816Table"
			(
				"Id"   Int                                    NOT NULL,
				"Text" VarChar(255) CHARACTER SET UNICODE_FSS,

				CONSTRAINT "PK_Issue2816Table" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird.2.5 Firebird

INSERT INTO "Issue2816Table"
(
	"Id",
	"Text"
)
SELECT 0,CAST('' AS VarChar(255) CHARACTER SET UNICODE_FSS) FROM rdb$database UNION ALL
SELECT 1,'a' FROM rdb$database UNION ALL
SELECT 2,' m ' FROM rdb$database UNION ALL
SELECT 3,' ' FROM rdb$database UNION ALL
SELECT 4,'  ' FROM rdb$database UNION ALL
SELECT 5,NULL FROM rdb$database

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"p"."Id",
	"p"."Text"
FROM
	"Issue2816Table" "p"
WHERE
	"p"."Text" IS NULL OR NOT "p"."Text" SIMILAR TO _utf8 x'255B5E090A0B0C0D20C285C2A0E19A80E28080E28081E28082E28083E28084E28085E28086E28087E28088E28089E2808AE280A8E280A9E2819FE380805D25'

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"t1"."Id",
	"t1"."Text"
FROM
	"Issue2816Table" "t1"

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue2816Table')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue2816Table"';
END

