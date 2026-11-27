-- SapHana.Native SapHana
INSERT INTO "OrderedColumnsRecord"
(
	"event_id",
	"event_description"
)
VALUES
(
	1,
	'New event'
)

-- SapHana.Native SapHana
SELECT
	"t1"."event_id",
	"t1"."event_description"
FROM
	"OrderedColumnsRecord" "t1"
LIMIT 1

