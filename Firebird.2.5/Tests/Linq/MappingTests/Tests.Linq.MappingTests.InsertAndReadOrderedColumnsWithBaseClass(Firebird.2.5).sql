-- Firebird.2.5 Firebird
INSERT INTO "OrderedColumnsDerivedRecord"
(
	"event_id",
	"event_description"
)
VALUES
(
	1,
	'New event'
)

-- Firebird.2.5 Firebird
SELECT FIRST 1
	"t1"."event_id",
	"t1"."event_description"
FROM
	"OrderedColumnsDerivedRecord" "t1"

