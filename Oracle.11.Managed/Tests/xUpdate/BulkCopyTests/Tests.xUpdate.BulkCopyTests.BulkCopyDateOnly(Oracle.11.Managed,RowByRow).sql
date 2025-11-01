-- Oracle.11.Managed Oracle11
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

-- Oracle.11.Managed Oracle11

SELECT
	t1."Date"
FROM
	"DateOnlyTable" t1
WHERE
	ROWNUM <= 2

