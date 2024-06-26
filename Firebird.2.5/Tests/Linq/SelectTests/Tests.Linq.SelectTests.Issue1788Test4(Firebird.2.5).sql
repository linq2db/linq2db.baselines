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

SELECT
	CASE
		WHEN "l_1"."Id" IS NOT NULL THEN CASE
			WHEN "l_1"."HasValue" IS NULL THEN NULL
			WHEN "l_1"."HasValue" = '1' THEN '1'
			ELSE '0'
		END
		ELSE '0'
	END,
	"l_1"."Value1"
FROM
	"Table1788" "p"
		LEFT JOIN (
			SELECT
				CASE
					WHEN "l"."Value1" IS NOT NULL THEN CASE
						WHEN "l"."Value1" IS NOT NULL THEN '1'
						ELSE '0'
					END
					ELSE '0'
				END as "HasValue",
				"l"."Id",
				"l"."Value1"
			FROM
				"Table1788" "l"
		) "l_1" ON "l_1"."Id" = "p"."Id" + 1

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Table1788')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Table1788"';
END

