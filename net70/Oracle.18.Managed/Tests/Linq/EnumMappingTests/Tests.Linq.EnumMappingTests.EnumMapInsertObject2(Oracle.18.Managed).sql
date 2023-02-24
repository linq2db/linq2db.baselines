﻿BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 102

DELETE FROM
	"LinqDataTypes" r
WHERE
	r.ID >= 101 AND r.ID < :Id

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 101
DECLARE @TestField Int64
SET     @TestField = 12
DECLARE @Int32Field Int32
SET     @Int32Field = 0

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
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	Count(*)
FROM
	"LinqDataTypes" r
WHERE
	r.ID = 101 AND r."BigIntValue" = 12

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 102

DELETE FROM
	"LinqDataTypes" r
WHERE
	r.ID >= 101 AND r.ID < :Id

