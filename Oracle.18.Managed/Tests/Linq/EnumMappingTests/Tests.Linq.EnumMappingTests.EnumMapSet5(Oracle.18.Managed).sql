BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @p Int32
SET     @p = 102

DELETE FROM
	"LinqDataTypes" r
WHERE
	r.ID >= 101 AND r.ID < :p

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

INSERT INTO "LinqDataTypes"
(
	ID,
	"BigIntValue"
)
VALUES
(
	101,
	11
)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @TestField Int64
SET     @TestField = 12

UPDATE
	"LinqDataTypes" r
SET
	"BigIntValue" = :TestField
WHERE
	r.ID = 101 AND r."BigIntValue" = 11

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	r."BigIntValue" as "TestField"
FROM
	"LinqDataTypes" r
WHERE
	r.ID = 101 AND r."BigIntValue" = 12
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @p Int32
SET     @p = 102

DELETE FROM
	"LinqDataTypes" r
WHERE
	r.ID >= 101 AND r.ID < :p

