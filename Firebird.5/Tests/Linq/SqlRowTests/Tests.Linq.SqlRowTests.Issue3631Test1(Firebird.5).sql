﻿BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue3631Table')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue3631Table"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue3631Table')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Issue3631Table"
			(
				"Country" VarChar(2) CHARACTER SET UNICODE_FSS NOT NULL,
				"State"   VarChar(2) CHARACTER SET UNICODE_FSS NOT NULL
			)
		';
END

BeforeExecute
-- Firebird.5 Firebird4

INSERT INTO "Issue3631Table"
(
	"Country",
	"State"
)
SELECT CAST('US' AS VarChar(2) CHARACTER SET UNICODE_FSS),CAST('AL' AS VarChar(2) CHARACTER SET UNICODE_FSS) FROM rdb$database UNION ALL
SELECT 'US','AZ' FROM rdb$database UNION ALL
SELECT 'US','CA' FROM rdb$database UNION ALL
SELECT 'US','FL' FROM rdb$database UNION ALL
SELECT 'US','IN' FROM rdb$database UNION ALL
SELECT 'US','OH' FROM rdb$database UNION ALL
SELECT 'US','NY' FROM rdb$database UNION ALL
SELECT 'CA','AB' FROM rdb$database UNION ALL
SELECT 'CA','ON' FROM rdb$database

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"x"."Country",
	"x"."State"
FROM
	"Issue3631Table" "x"
WHERE
	"x"."Country" = 'US' AND "x"."State" = 'CA' OR "x"."Country" = 'US' AND "x"."State" = 'NY'

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue3631Table')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue3631Table"';
END

