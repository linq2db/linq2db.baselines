BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Table1788')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Table1788"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Table1788')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Table1788"
			(
				"Id"     Int NOT NULL,
				"Value1" Int NOT NULL,

				CONSTRAINT "PK_Table1788" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird.2.5 Firebird

INSERT INTO "Table1788"
(
	"Id",
	"Value1"
)
SELECT 1,11 FROM rdb$database UNION ALL
SELECT 2,22 FROM rdb$database UNION ALL
SELECT 3,33 FROM rdb$database

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"t1"."Id",
	"t1"."Value1"
FROM
	"Table1788" "t1"

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @p Char -- String
SET     @p = '0'

SELECT
	"l_1"."Id",
	"l_1"."Value1",
	"l_1"."HasValue",
	CAST(@p AS CHAR(1))
FROM
	"Table1788" "p"
		LEFT JOIN (
			SELECT
				"l"."Value1",
				'0' as "HasValue",
				"l"."Id"
			FROM
				"Table1788" "l"
		) "l_1" ON "l_1"."Id" = "p"."Id" + 1

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Table1788')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Table1788"';
END

