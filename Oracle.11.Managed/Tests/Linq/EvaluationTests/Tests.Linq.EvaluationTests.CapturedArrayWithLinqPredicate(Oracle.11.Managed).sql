-- Oracle.11.Managed Oracle11
DECLARE @ID Int32
SET     @ID = 5

INSERT INTO "ClientEvaluatedRecord"
(
	ID
)
VALUES
(
	:ID
)

-- Oracle.11.Managed Oracle11
SELECT
	t1.ID
FROM
	"ClientEvaluatedRecord" t1
WHERE
	t1.ID IN (4, 5, 6) AND ROWNUM <= 2

