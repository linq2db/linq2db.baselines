-- Oracle.11.Managed Oracle11
DECLARE @p Int32
SET     @p = 102

DELETE FROM
	"LinqDataTypes" r
WHERE
	r.ID >= 101 AND r.ID < :p

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

-- Oracle.11.Managed Oracle11

SELECT
	entity.ID,
	entity."BigIntValue",
	entity."IntValue"
FROM
	"LinqDataTypes" entity
WHERE
	entity."BigIntValue" = 12

-- Oracle.11.Managed Oracle11
DECLARE @p Int32
SET     @p = 102

DELETE FROM
	"LinqDataTypes" r
WHERE
	r.ID >= 101 AND r.ID < :p

