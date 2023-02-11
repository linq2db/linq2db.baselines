BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue1403Tests_3')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue1403Tests_3"';
END

BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue1403Tests_3')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Issue1403Tests_3"
			(
				"event_id"          Int                                    NOT NULL,
				"event_description" VarChar(255) CHARACTER SET UNICODE_FSS NOT NULL,

				CONSTRAINT "PK_Issue1403Tests_3" PRIMARY KEY ("event_id")
			)
		';
END

BeforeExecute
-- Firebird4 Firebird

INSERT INTO "Issue1403Tests_3"
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
-- Firebird4 Firebird
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT FIRST @take
	"t1"."event_id",
	"t1"."event_description"
FROM
	"Issue1403Tests_3" "t1"

BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue1403Tests_3')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue1403Tests_3"';
END

