-- SapHana.Native SapHana
INSERT INTO "UnorderedColumnsDerivedRecord"
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
	"UnorderedColumnsDerivedRecord" "t1"
LIMIT 1

