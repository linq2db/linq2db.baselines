-- Oracle.19.Managed Oracle.Managed Oracle12

INSERT ALL
	INTO "DateOnlyTable" ("Date") VALUES (DATE '2021-01-01')
SELECT * FROM dual

-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	t1."Date" as "Date_1"
FROM
	"DateOnlyTable" t1
FETCH NEXT 2 ROWS ONLY

