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
	"BigIntValue",
	"IntValue"
)
VALUES
(
	101,
	4,
	10
)

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	CASE
		WHEN t1."BigIntValue" IS NOT NULL AND t1."IntValue" IS NOT NULL
			THEN 1
		ELSE 0
	END,
	t1."BigIntValue",
	t1."IntValue"
FROM
	"LinqDataTypes" t1
WHERE
	t1.ID = 101

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @p Int32
SET     @p = 102

DELETE FROM
	"LinqDataTypes" r
WHERE
	r.ID >= 101 AND r.ID < :p

