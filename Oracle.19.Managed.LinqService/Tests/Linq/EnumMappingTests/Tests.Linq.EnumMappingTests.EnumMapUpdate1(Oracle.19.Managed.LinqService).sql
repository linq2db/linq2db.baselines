BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 102

DELETE FROM
	"LinqDataTypes" r
WHERE
	r.ID >= 101 AND r.ID < :Id

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

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
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @TestField Int64
SET     @TestField = 12

UPDATE
	"LinqDataTypes" r
SET
	"BigIntValue" = :TestField
WHERE
	r.ID = 101 AND r."BigIntValue" = 11

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	r."BigIntValue" as "TestField"
FROM
	"LinqDataTypes" r
WHERE
	r.ID = 101 AND r."BigIntValue" = 12
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 102

DELETE FROM
	"LinqDataTypes" r
WHERE
	r.ID >= 101 AND r.ID < :Id

