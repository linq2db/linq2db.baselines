BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'ConditionalData')) THEN
		EXECUTE STATEMENT 'DROP TABLE "ConditionalData"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'ConditionalData')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "ConditionalData"
			(
				"Id"         Int                                    NOT NULL,
				"StringProp" VarChar(255) CHARACTER SET UNICODE_FSS,

				CONSTRAINT "PK_ConditionalData" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird.4 Firebird4

INSERT INTO "ConditionalData"
(
	"Id",
	"StringProp"
)
SELECT 1,CAST('String1' AS VarChar(255) CHARACTER SET UNICODE_FSS) FROM rdb$database UNION ALL
SELECT 2,'String2' FROM rdb$database UNION ALL
SELECT 3,NULL FROM rdb$database UNION ALL
SELECT 4,'String4' FROM rdb$database UNION ALL
SELECT 5,'String5' FROM rdb$database UNION ALL
SELECT 6,NULL FROM rdb$database UNION ALL
SELECT 7,'String7' FROM rdb$database UNION ALL
SELECT 8,'String8' FROM rdb$database UNION ALL
SELECT 9,NULL FROM rdb$database UNION ALL
SELECT 10,'String10' FROM rdb$database

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @p Integer -- Int32
SET     @p = NULL

SELECT
	"x"."Id",
	CASE
		WHEN "x"."StringProp" = '1' OR "x"."StringProp" IS NULL THEN TRUE
		ELSE FALSE
	END,
	"x"."StringProp",
	"x"."StringProp" || '2'
FROM
	"ConditionalData" "x"
WHERE
	CASE
		WHEN "x"."StringProp" = '1' OR "x"."StringProp" IS NULL THEN '2'
		WHEN "x"."StringProp" = '2' THEN "x"."StringProp"
		ELSE "x"."StringProp" || '2'
	END LIKE '%2' ESCAPE '~' AND
	CASE
		WHEN "x"."StringProp" = '1' OR "x"."StringProp" IS NULL THEN @p
		WHEN "x"."StringProp" = '2' THEN 1
		ELSE 2
	END = 2

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"t1"."Id",
	"t1"."StringProp"
FROM
	"ConditionalData" "t1"

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'ConditionalData')) THEN
		EXECUTE STATEMENT 'DROP TABLE "ConditionalData"';
END

