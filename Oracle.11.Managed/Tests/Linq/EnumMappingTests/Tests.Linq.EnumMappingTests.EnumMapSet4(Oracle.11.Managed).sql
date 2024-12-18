﻿BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @p Int32
SET     @p = 102

DELETE FROM
	"LinqDataTypes" r
WHERE
	r.ID >= 101 AND r.ID < :p

BeforeExecute
-- Oracle.11.Managed Oracle11

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
-- Oracle.11.Managed Oracle11
DECLARE @TestField Int64
SET     @TestField = 12

UPDATE
	"LinqDataTypes" r
SET
	"BigIntValue" = :TestField
WHERE
	r.ID = 101 AND
	r.ID IS NOT NULL AND
	r."BigIntValue" = 11 AND
	r."BigIntValue" IS NOT NULL

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	r."BigIntValue"
FROM
	"LinqDataTypes" r
WHERE
	r.ID = 101 AND r."BigIntValue" = 12 AND ROWNUM <= 1

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @p Int32
SET     @p = 102

DELETE FROM
	"LinqDataTypes" r
WHERE
	r.ID >= 101 AND r.ID < :p

