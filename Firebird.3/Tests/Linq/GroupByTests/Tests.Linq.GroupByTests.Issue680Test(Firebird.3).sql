BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue680Table')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue680Table"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue680Table')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Issue680Table"
			(
				"TimeStamp" TimeStamp NOT NULL
			)
		';
END

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @DateTime TimeStamp -- DateTime
SET     @DateTime = CAST('2020-02-29 17:54:55.123' AS timestamp)

SELECT
	COUNT(CASE
		WHEN "g_1"."TimeStamp" > CAST(@DateTime AS TimeStamp) THEN 1
		ELSE NULL
	END)
FROM
	"Issue680Table" "g_1"
GROUP BY
	"g_1"."TimeStamp"

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue680Table')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue680Table"';
END

