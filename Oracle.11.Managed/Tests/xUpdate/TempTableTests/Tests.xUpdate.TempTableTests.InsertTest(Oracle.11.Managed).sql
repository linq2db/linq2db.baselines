-- Oracle.11.Managed Oracle11

INSERT INTO "Table2"
(
	ID
)
SELECT
	t.ID
FROM
	"Table1" t

-- Oracle.11.Managed Oracle11

SELECT
	t1.ID,
	t1."Date"
FROM
	"Table2" t1

