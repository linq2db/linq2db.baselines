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
DECLARE @p Int32
SET     @p = 5

SELECT
	t1.ID
FROM
	"ClientEvaluatedRecord" t1
WHERE
	t1.ID = :p AND ROWNUM <= 2

-- Oracle.11.Managed Oracle11
DECLARE @Id Int32
SET     @Id = 5

SELECT
	t1.ID
FROM
	"ClientEvaluatedRecord" t1
WHERE
	t1.ID = :Id AND ROWNUM <= 2

