BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue1403Tests_2')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue1403Tests_2"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue1403Tests_2')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Issue1403Tests_2"
			(
				"event_id"          Int                                    NOT NULL,
				"event_description" VarChar(255) CHARACTER SET UNICODE_FSS NOT NULL,

				CONSTRAINT "PK_Issue1403Tests_2" PRIMARY KEY ("event_id")
			)
		';
END

BeforeExecute
-- Firebird.3 Firebird3

INSERT INTO "Issue1403Tests_2"
(
	"event_id",
	"event_description"
)
VALUES
(
	1,
	'New event'
)

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."event_id",
	"t1"."event_description"
FROM
	"Issue1403Tests_2" "t1"
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue1403Tests_2')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue1403Tests_2"';
END

