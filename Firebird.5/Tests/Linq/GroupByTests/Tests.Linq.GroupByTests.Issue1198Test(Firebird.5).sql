BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue1192Table')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue1192Table"';
END

BeforeExecute
-- Firebird.5 Firebird4

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
-- Firebird.5 Firebird4
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	(
		SELECT
			Count(*)
		FROM
			"Issue1192Table" "t"
		WHERE
			"t"."Status" = 3 AND "t"."MyOtherId" = 12
	)
FROM
	"Issue1192Table" "t_1"
WHERE
	"t_1"."MyOtherId" = 12
FETCH NEXT @take ROWS ONLY

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue1192Table')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue1192Table"';
END

