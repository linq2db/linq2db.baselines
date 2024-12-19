BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4723Table1')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue4723Table1"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4723Table1')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Issue4723Table1"
			(
				"Id"               Int                                    NOT NULL,
				"ExpressionMethod" VarChar(255) CHARACTER SET UNICODE_FSS
			)
		';
END

BeforeExecute
-- Firebird.5 Firebird4

INSERT INTO "Issue4723Table1"
(
	"Id",
	"ExpressionMethod"
)
SELECT 1,CAST(NULL AS VarChar(255) CHARACTER SET UNICODE_FSS) FROM rdb$database

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4723Table2')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue4723Table2"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4723Table2')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Issue4723Table2"
			(
				"Id"    Int                                    NOT NULL,
				"Value" VarChar(255) CHARACTER SET UNICODE_FSS
			)
		';
END

BeforeExecute
-- Firebird.5 Firebird4

INSERT INTO "Issue4723Table2"
(
	"Id",
	"Value"
)
SELECT 1,CAST('Value 1' AS VarChar(255) CHARACTER SET UNICODE_FSS) FROM rdb$database UNION ALL
SELECT 1,'Value 1' FROM rdb$database UNION ALL
SELECT 2,'Value 2' FROM rdb$database

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"x"."Id",
	"t1"."Association"
FROM
	"Issue4723Table1" "x"
		LEFT JOIN LATERAL (
			SELECT
				"a_Association"."Value" as "Association"
			FROM
				"Issue4723Table2" "a_Association"
			WHERE
				"a_Association"."Id" = "x"."Id"
			FETCH NEXT 1 ROWS ONLY
		) "t1" ON 1=1
WHERE
	"t1"."Association" IS NOT NULL AND ("t1"."Association" <> 'unknown' OR "t1"."Association" IS NULL)

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4723Table2')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue4723Table2"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4723Table1')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue4723Table1"';
END

