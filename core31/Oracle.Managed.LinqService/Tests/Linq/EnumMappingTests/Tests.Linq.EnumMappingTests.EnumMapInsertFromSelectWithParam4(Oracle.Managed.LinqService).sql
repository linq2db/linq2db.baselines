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
	"BigIntValue"
)
VALUES
(
	101,
	12
)

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @param Int64
SET     @param = 11

INSERT INTO "LinqDataTypes"
(
	ID,
	"BigIntValue"
)
SELECT
	r.ID,
	:param
FROM
	"LinqDataTypes" r
WHERE
	r.ID = 101 AND r."BigIntValue" = 12

BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	Count(*)
FROM
	"LinqDataTypes" r
WHERE
	r.ID = 101 AND r."BigIntValue" = 11

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 102

DELETE FROM
	"LinqDataTypes" r
WHERE
	r.ID >= 101 AND r.ID < :Id

