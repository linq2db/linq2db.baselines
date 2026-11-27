-- Oracle.11.Managed Oracle11
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

-- Oracle.11.Managed Oracle11
SELECT
	t1."event_id",
	t1."event_description"
FROM
	"OrderedColumnsDerivedRecord" t1
WHERE
	ROWNUM <= 1

