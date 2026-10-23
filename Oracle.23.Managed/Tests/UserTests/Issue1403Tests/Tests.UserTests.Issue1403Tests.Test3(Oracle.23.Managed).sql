-- Oracle.23.Managed Oracle.Managed Oracle12
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

-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	t1."event_id",
	t1."event_description"
FROM
	"Issue1403Tests_3" t1
FETCH NEXT 1 ROWS ONLY

