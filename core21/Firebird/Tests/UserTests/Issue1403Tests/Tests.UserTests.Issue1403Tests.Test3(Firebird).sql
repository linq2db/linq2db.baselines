BeforeExecute
-- Firebird

CREATE TABLE "Issue1403Tests_3"
(
	"event_description" VarChar(255) CHARACTER SET UNICODE_FSS NOT NULL,
	"event_id"          Int                                    NOT NULL,

	CONSTRAINT "PK_Issue1403Tests_3" PRIMARY KEY ("event_id")
)

BeforeExecute
-- Firebird

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
-- Firebird
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT FIRST @take
	"t1"."event_description",
	"t1"."event_id"
FROM
	"Issue1403Tests_3" "t1"

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue1403Tests_3')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue1403Tests_3"';
END

