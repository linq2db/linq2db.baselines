BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

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
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	t1."event_id" as "EventId",
	t1."event_description" as "EventDescription"
FROM
	"Issue1403Tests_1" t1
FETCH NEXT 1 ROWS ONLY

