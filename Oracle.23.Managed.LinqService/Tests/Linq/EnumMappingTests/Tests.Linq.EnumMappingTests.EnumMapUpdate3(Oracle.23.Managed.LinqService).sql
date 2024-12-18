﻿BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @p Int32
SET     @p = 102

DELETE FROM
	"LinqDataTypes" r
WHERE
	r.ID >= 101 AND r.ID < :p

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

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
-- Oracle.23.Managed Oracle.Managed Oracle12

UPDATE
	"LinqDataTypes" r
SET
	"BigIntValue" = 12
WHERE
	r.ID = 101 AND
	r.ID IS NOT NULL AND
	r."BigIntValue" = 11 AND
	r."BigIntValue" IS NOT NULL

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	r."BigIntValue" as "TestField"
FROM
	"LinqDataTypes" r
WHERE
	r.ID = 101 AND r."BigIntValue" = 12
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @p Int32
SET     @p = 102

DELETE FROM
	"LinqDataTypes" r
WHERE
	r.ID >= 101 AND r.ID < :p

