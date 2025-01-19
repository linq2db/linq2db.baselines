BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @:p1 Date
SET     @:p1 = {TIMESTAMP '2021-01-01 00:00:00.000000'}

INSERT INTO "DateOnlyTable" ("Date") VALUES (:p1)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t1."Date" as "Date_1"
FROM
	"DateOnlyTable" t1
FETCH NEXT 2 ROWS ONLY

