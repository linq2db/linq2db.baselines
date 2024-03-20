BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 102

DELETE FROM
	"LinqDataTypes" r
WHERE
	r.ID >= 101 AND r.ID < :Id

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

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

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @Int32Field Int32
SET     @Int32Field = 4

UPDATE
	"LinqDataTypes" r
SET
	"IntValue" = :Int32Field
WHERE
	r.ID = 101 AND r."IntValue" = 3

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	Count(*)
FROM
	"LinqDataTypes" r
WHERE
	r.ID = 101 AND r."IntValue" = 4

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 102

DELETE FROM
	"LinqDataTypes" r
WHERE
	r.ID >= 101 AND r.ID < :Id

