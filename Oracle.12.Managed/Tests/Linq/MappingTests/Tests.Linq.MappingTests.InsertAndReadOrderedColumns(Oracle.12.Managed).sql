-- Oracle.12.Managed Oracle.Managed Oracle12
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

-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	t1."event_id",
	t1."event_description"
FROM
	"OrderedColumnsRecord" t1
FETCH NEXT 1 ROWS ONLY

