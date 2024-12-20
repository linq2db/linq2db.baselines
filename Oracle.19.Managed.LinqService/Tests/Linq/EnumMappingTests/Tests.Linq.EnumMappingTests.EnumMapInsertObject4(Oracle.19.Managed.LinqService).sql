BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @p Int32
SET     @p = 102

DELETE FROM
	"LinqDataTypes" r
WHERE
	r.ID >= 101 AND r.ID < :p

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 101
DECLARE @TestField Int64
SET     @TestField = 12
DECLARE @Int32Field Int32
SET     @Int32Field = NULL

INSERT INTO "LinqDataTypes"
(
	ID,
	"BigIntValue",
	"IntValue"
)
VALUES
(
	:Id,
	:TestField,
	:Int32Field
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"LinqDataTypes" r
WHERE
	r.ID = 101 AND r."BigIntValue" = 12

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @p Int32
SET     @p = 102

DELETE FROM
	"LinqDataTypes" r
WHERE
	r.ID >= 101 AND r.ID < :p

