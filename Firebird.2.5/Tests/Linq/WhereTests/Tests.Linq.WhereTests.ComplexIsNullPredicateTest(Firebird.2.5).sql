BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'ComplexPredicate')) THEN
		EXECUTE STATEMENT 'DROP TABLE "ComplexPredicate"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'ComplexPredicate')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "ComplexPredicate"
			(
				"Id"    Int                                    NOT NULL,
				"Value" VarChar(255) CHARACTER SET UNICODE_FSS
			)
		';
END

BeforeExecute
-- Firebird.2.5 Firebird

INSERT INTO "ComplexPredicate"
(
	"Id",
	"Value"
)
SELECT 1,CAST(NULL AS VarChar(255) CHARACTER SET UNICODE_FSS) FROM rdb$database UNION ALL
SELECT 2,'other' FROM rdb$database UNION ALL
SELECT 3,'123' FROM rdb$database UNION ALL
SELECT 4,'test' FROM rdb$database UNION ALL
SELECT 5,'1' FROM rdb$database

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"r"."Id",
	"r"."Value"
FROM
	"ComplexPredicate" "r"
WHERE
	CASE
		WHEN "r"."Value" = '123' THEN '1'
		ELSE '0'
	END = CASE
		WHEN "r"."Value" = '1' OR "r"."Value" = 'test' AND ("r"."Value" <> '1' OR "r"."Value" IS NULL)
			THEN '1'
		ELSE '0'
	END
ORDER BY
	"r"."Id"

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"t1"."Id",
	"t1"."Value"
FROM
	"ComplexPredicate" "t1"

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'ComplexPredicate')) THEN
		EXECUTE STATEMENT 'DROP TABLE "ComplexPredicate"';
END

