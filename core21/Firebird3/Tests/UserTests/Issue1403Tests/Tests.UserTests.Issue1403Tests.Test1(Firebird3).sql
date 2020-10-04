BeforeExecute
-- Firebird3 Firebird

CREATE TABLE "Issue1403Tests_1"
(
	"event_id"          Int                                    NOT NULL,
	"event_description" VarChar(255) CHARACTER SET UNICODE_FSS NOT NULL,

	CONSTRAINT "PK_Issue1403Tests_1" PRIMARY KEY ("event_id")
)

BeforeExecute
-- Firebird3 Firebird

INSERT INTO "Issue1403Tests_1"
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
-- Firebird3 Firebird
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT FIRST @take
	"t1"."event_description",
	"t1"."event_id"
FROM
	"Issue1403Tests_1" "t1"

BeforeExecute
-- Firebird3 Firebird

DROP TABLE "Issue1403Tests_1"

