﻿BeforeExecute
-- Informix.DB2 Informix
DECLARE @DateTimeValue_1 Timestamp(16) -- DateTime
SET     @DateTimeValue_1 = TO_DATE('2009-09-27', '%Y-%m-%d')

SELECT 
	t1.ID, 
	t1.MoneyValue, 
	t1.DateTimeValue, 
	t1.DateTimeValue2, 
	t1.BoolValue, 
	t1.GuidValue, 
	t1.SmallIntValue, 
	t1.IntValue, 
	t1.BigIntValue, 
	t1.StringValue
FROM
	LinqDataTypes t1
WHERE
	t1.DateTimeValue = @DateTimeValue_1

