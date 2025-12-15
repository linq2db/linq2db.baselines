-- Oracle.18.Managed Oracle.Managed Oracle12

DELETE FROM
	"LinqDataTypes" r
WHERE
	r.ID >= 1000

-- Oracle.18.Managed Oracle.Managed Oracle12
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

-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	t.ID,
	t."BigIntValue"
FROM
	"LinqDataTypes" t
WHERE
	t.ID = 1001
FETCH NEXT 1 ROWS ONLY

-- Oracle.18.Managed Oracle.Managed Oracle12

DELETE FROM
	"LinqDataTypes" r
WHERE
	r.ID >= 1000

