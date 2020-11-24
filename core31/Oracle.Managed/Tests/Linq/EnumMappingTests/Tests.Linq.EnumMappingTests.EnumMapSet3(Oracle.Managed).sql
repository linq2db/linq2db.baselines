BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 102

DELETE FROM
	"LinqDataTypes" r
WHERE
	r.ID >= 101 AND r.ID < :Id

BeforeExecute
-- Oracle.Managed Oracle12

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
-- Oracle.Managed Oracle12

UPDATE
	"LinqDataTypes"
SET
	"LinqDataTypes"."IntValue" = 4
WHERE
	"LinqDataTypes".ID = 101 AND "LinqDataTypes"."IntValue" = 3

BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	Count(*)
FROM
	"LinqDataTypes" r
WHERE
	r.ID = 101 AND r."IntValue" = 4

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 102

DELETE FROM
	"LinqDataTypes" r
WHERE
	r.ID >= 101 AND r.ID < :Id

