BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @:p1 Date
SET     @:p1 = {TIMESTAMP '2021-01-01 00:00:00.000000'}

INSERT INTO "DateOnlyTable" ("Date") VALUES (:p1)

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	t1."Date"
FROM
	"DateOnlyTable" t1
WHERE
	ROWNUM <= 2

