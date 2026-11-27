-- Oracle.21.Managed Oracle.Managed Oracle12
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

-- Oracle.21.Managed Oracle.Managed Oracle12
SELECT
	t1."event_id",
	t1."event_description"
FROM
	"OrderedColumnsDerivedRecord" t1
FETCH NEXT 1 ROWS ONLY

