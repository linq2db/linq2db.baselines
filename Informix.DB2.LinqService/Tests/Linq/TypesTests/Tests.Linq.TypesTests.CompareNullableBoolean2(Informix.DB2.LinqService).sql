﻿BeforeExecute
--  Informix.DB2 Informix

SELECT
	t1.ID,
	t1.MoneyValue,
	t1.DateTimeValue,
	t1.BoolValue,
	t1.GuidValue,
	t1.BinaryValue,
	t1.SmallIntValue,
	t1.StringValue
FROM
	LinqDataTypes t1
		INNER JOIN LinqDataTypes t2 ON t1.ID = t2.ID

BeforeExecute
--  Informix.DB2 Informix
DECLARE @param2 Char(1) -- StringFixedLength
SET     @param2 = 'f'

SELECT
	t1.ID,
	t1.MoneyValue,
	t1.DateTimeValue,
	t1.BoolValue,
	t1.GuidValue,
	t1.BinaryValue,
	t1.SmallIntValue,
	t1.StringValue
FROM
	LinqDataTypes t1
		INNER JOIN LinqDataTypes t2 ON t1.ID = t2.ID
WHERE
	t1.BoolValue = @param2

