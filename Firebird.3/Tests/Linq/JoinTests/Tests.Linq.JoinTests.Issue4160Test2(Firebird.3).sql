BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4160Person')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue4160Person"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4160Person')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Issue4160Person"
			(
				"Code" VarChar(255) CHARACTER SET UNICODE_FSS
			)
		';
END

BeforeExecute
-- Firebird.3 Firebird3

INSERT INTO "Issue4160Person"
(
	"Code"
)
SELECT CAST('SD' AS VarChar(255) CHARACTER SET UNICODE_FSS) FROM rdb$database UNION ALL
SELECT 'SD' FROM rdb$database UNION ALL
SELECT 'SH' FROM rdb$database

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4160City')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue4160City"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4160City')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Issue4160City"
			(
				"Code" VarChar(255) CHARACTER SET UNICODE_FSS,
				"Name" VarChar(255) CHARACTER SET UNICODE_FSS
			)
		';
END

BeforeExecute
-- Firebird.3 Firebird3

INSERT INTO "Issue4160City"
(
	"Code",
	"Name"
)
SELECT CAST('SD' AS VarChar(255) CHARACTER SET UNICODE_FSS),CAST('SYDNEY' AS VarChar(255) CHARACTER SET UNICODE_FSS) FROM rdb$database UNION ALL
SELECT 'SD','SUNDAY' FROM rdb$database UNION ALL
SELECT 'SH','SYDHIP' FROM rdb$database

BeforeExecute
-- Firebird.3 Firebird3

SELECT DISTINCT
	"cc_1"."Name"
FROM
	"Issue4160Person" "t1"
		LEFT JOIN (
			SELECT
				"cc"."Name",
				ROW_NUMBER() OVER (PARTITION BY "cc"."Code" ORDER BY "cc"."Code") as "rn",
				"cc"."Code"
			FROM
				"Issue4160City" "cc"
		) "cc_1" ON ("cc_1"."Code" = "t1"."Code" OR "cc_1"."Code" IS NULL AND "t1"."Code" IS NULL) AND "cc_1"."rn" <= 1

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4160City')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue4160City"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4160Person')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue4160Person"';
END

