BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

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

BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	t1."event_id",
	t1."event_description"
FROM
	"Issue1403Tests_3" t1
WHERE
	ROWNUM <= 1

