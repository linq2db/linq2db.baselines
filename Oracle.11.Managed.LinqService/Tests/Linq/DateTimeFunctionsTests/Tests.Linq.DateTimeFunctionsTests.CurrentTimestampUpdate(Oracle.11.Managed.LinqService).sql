﻿BeforeExecute
-- Oracle.11.Managed Oracle11

UPDATE
	"LinqDataTypes" p
SET
	"BoolValue" = 1,
	"DateTimeValue" = CURRENT_TIMESTAMP
WHERE
	p.ID = 100000

