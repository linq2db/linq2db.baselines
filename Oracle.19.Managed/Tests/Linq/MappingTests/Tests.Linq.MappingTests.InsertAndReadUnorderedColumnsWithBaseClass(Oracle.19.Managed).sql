-- Oracle.19.Managed Oracle.Managed Oracle12
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

-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	t1."event_id",
	t1."event_description"
FROM
	"UnorderedColumnsDerivedRecord" t1
FETCH NEXT 1 ROWS ONLY

