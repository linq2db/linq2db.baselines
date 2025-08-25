BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12 (asynchronously)

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
-- Oracle.12.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	t1."event_id" as "EventId",
	t1."event_description" as "EventDescription"
FROM
	"Issue1403Tests_1" t1
FETCH NEXT 1 ROWS ONLY

