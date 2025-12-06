-- DB2 DB2.LUW DB2LUW

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

-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."event_id",
	"t1"."event_description"
FROM
	"Issue1403Tests_3" "t1"
FETCH NEXT 1 ROWS ONLY

