BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)

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
-- Firebird.5 Firebird4 (asynchronously)

SELECT
	"t1"."event_id",
	"t1"."event_description"
FROM
	"Issue1403Tests_1" "t1"
FETCH NEXT 1 ROWS ONLY

