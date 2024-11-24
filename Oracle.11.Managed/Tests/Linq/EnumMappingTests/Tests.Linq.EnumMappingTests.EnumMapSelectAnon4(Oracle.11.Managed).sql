BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @p Int32
SET     @p = 102

DELETE FROM
	"LinqDataTypes" r
WHERE
	r.ID >= 101 AND r.ID < :p

BeforeExecute
-- Oracle.11.Managed Oracle11

INSERT INTO "LinqDataTypes"
(
	ID,
	"BigIntValue"
)
VALUES
(
	101,
	12
)

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	r."BigIntValue"
FROM
	"LinqDataTypes" r
WHERE
	r.ID = 101 AND r."BigIntValue" = 12 AND ROWNUM <= 1

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @p Int32
SET     @p = 102

DELETE FROM
	"LinqDataTypes" r
WHERE
	r.ID >= 101 AND r.ID < :p

