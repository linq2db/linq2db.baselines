BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Date_1 Date
SET     @Date_1 = TIMESTAMP '2021-01-01 00:00:00.000000'

INSERT INTO "DateOnlyTable"
(
	"Date"
)
VALUES
(
	:Date_1
)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t1."Date" as "Date_1"
FROM
	"DateOnlyTable" t1
FETCH NEXT 2 ROWS ONLY

