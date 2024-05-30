BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 102

DELETE FROM
	"LinqDataTypes" r
WHERE
	r.ID >= 101 AND r.ID < :Id

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

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
-- Oracle.21.Managed Oracle.Managed Oracle12

UPDATE
	"LinqDataTypes" r
SET
	"IntValue" = 4
WHERE
	r.ID = 101 AND r."IntValue" = 3

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"LinqDataTypes" r
WHERE
	r.ID = 101 AND r."IntValue" = 4

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 102

DELETE FROM
	"LinqDataTypes" r
WHERE
	r.ID >= 101 AND r.ID < :Id

