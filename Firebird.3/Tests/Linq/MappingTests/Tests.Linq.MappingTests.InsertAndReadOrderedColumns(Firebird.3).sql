-- Firebird.3 Firebird3
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

-- Firebird.3 Firebird3
SELECT
	"t1"."event_id",
	"t1"."event_description"
FROM
	"OrderedColumnsRecord" "t1"
FETCH NEXT 1 ROWS ONLY

