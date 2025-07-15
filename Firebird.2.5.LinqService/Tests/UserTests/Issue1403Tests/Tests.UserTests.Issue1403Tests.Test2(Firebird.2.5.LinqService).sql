BeforeExecute
-- Firebird.2.5 Firebird

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
-- Firebird.2.5 Firebird

SELECT FIRST 1
	"t1"."event_id",
	"t1"."event_description"
FROM
	"Issue1403Tests_2" "t1"

