BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DELETE FROM
	"LinqDataTypes" t1
WHERE
	t1.ID >= 1000

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
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
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @take Int32
SET     @take = 1

SELECT
	t.ID,
	t."BigIntValue"
FROM
	"LinqDataTypes" t
WHERE
	t.ID = 1001 AND ROWNUM <= :take

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DELETE FROM
	"LinqDataTypes" t1
WHERE
	t1.ID >= 1000

