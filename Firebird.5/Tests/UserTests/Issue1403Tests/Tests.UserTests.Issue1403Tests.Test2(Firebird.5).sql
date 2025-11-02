-- Firebird.5 Firebird4

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

-- Firebird.5 Firebird4

SELECT
	"t1"."event_id",
	"t1"."event_description"
FROM
	"Issue1403Tests_2" "t1"
FETCH NEXT 1 ROWS ONLY

