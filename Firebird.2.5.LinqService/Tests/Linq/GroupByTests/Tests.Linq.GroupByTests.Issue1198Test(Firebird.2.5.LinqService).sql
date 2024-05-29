BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue1192Table')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue1192Table"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue1192Table')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Issue1192Table"
			(
				"IdId"      Int NOT NULL,
				"MyOtherId" Int NOT NULL,
				"Status"    Int NOT NULL
			)
		';
END

BeforeExecute
-- Firebird.2.5 Firebird

SELECT FIRST 1
	COUNT(CASE
		WHEN "t"."Status" = 3 THEN 1
		ELSE NULL
	END)
FROM
	"Issue1192Table" "t"
WHERE
	"t"."MyOtherId" = 12

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue1192Table')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue1192Table"';
END

