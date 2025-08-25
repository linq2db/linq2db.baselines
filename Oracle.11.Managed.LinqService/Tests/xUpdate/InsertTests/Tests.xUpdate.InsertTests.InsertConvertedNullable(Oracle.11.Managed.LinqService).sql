BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

DELETE FROM
	"LinqDataTypes" r
WHERE
	r.ID >= 1000

BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)
DECLARE @tt Int64
SET     @tt = 600000000

INSERT INTO "LinqDataTypes"
(
	ID,
	"BigIntValue"
)
VALUES
(
	1001,
	:tt
)

BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	t.ID,
	t."BigIntValue"
FROM
	"LinqDataTypes" t
WHERE
	t.ID = 1001 AND ROWNUM <= 1

BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

DELETE FROM
	"LinqDataTypes" r
WHERE
	r.ID >= 1000

