-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @p Int32
SET     @p = 102

DELETE FROM
	"LinqDataTypes" r
WHERE
	r.ID >= 101 AND r.ID < :p

-- Oracle.12.Managed Oracle.Managed Oracle12

INSERT INTO "LinqDataTypes"
(
	ID
)
VALUES
(
	101
)

-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	r."BigIntValue" as "TestField"
FROM
	"LinqDataTypes" r
WHERE
	r.ID = 101 AND r."BigIntValue" IS NULL
FETCH NEXT 1 ROWS ONLY

-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @p Int32
SET     @p = 102

DELETE FROM
	"LinqDataTypes" r
WHERE
	r.ID >= 101 AND r.ID < :p

