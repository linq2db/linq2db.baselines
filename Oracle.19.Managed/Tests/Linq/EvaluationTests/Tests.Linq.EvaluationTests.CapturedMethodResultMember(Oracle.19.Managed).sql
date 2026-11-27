-- Oracle.19.Managed Oracle.Managed Oracle12
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

-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Item1 Int32
SET     @Item1 = 5

SELECT
	t1.ID
FROM
	"ClientEvaluatedRecord" t1
WHERE
	t1.ID = :Item1
FETCH NEXT 2 ROWS ONLY

