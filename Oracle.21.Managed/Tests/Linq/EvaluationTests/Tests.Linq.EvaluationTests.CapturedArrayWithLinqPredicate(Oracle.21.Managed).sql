-- Oracle.21.Managed Oracle.Managed Oracle12
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

-- Oracle.21.Managed Oracle.Managed Oracle12
SELECT
	t1.ID
FROM
	"ClientEvaluatedRecord" t1
WHERE
	t1.ID IN (4, 5, 6)
FETCH NEXT 2 ROWS ONLY

