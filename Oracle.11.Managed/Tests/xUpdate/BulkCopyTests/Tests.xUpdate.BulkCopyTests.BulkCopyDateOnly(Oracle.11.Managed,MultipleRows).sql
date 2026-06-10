-- Oracle.11.Managed Oracle11

INSERT ALL
	INTO "DateOnlyTable" ("Date") VALUES (DATE '2021-01-01')
SELECT * FROM dual

-- Oracle.11.Managed Oracle11

SELECT
	t1."Date"
FROM
	"DateOnlyTable" t1
WHERE
	ROWNUM <= 2

