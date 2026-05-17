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
	"IntValue"
)
VALUES
(
	101,
	3
)

-- Oracle.11.Managed Oracle11

UPDATE
	"LinqDataTypes" r
SET
	"IntValue" = 4
WHERE
	r.ID = 101 AND r."IntValue" = 3

-- Oracle.11.Managed Oracle11

SELECT
	COUNT(*)
FROM
	"LinqDataTypes" r
WHERE
	r.ID = 101 AND r."IntValue" = 4

-- Oracle.11.Managed Oracle11
DECLARE @p Int32
SET     @p = 102

DELETE FROM
	"LinqDataTypes" r
WHERE
	r.ID >= 101 AND r.ID < :p

