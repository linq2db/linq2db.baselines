﻿BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

DELETE FROM
	"LinqDataTypes" t1
WHERE
	t1.ID > 1000

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

INSERT ALL
	INTO "LinqDataTypes" (ID, "MoneyValue", "DateTimeValue", "DateTimeValue2", "BoolValue", "GuidValue", "SmallIntValue", "IntValue", "BigIntValue", "StringValue") VALUES (1003,0,TIMESTAMP '2020-02-29 17:54:55.123123',NULL,1,HEXTORAW('659112EFFE6FF94DBB6BBB16E413C883'),NULL,NULL,NULL,NULL)
	INTO "LinqDataTypes" (ID, "MoneyValue", "DateTimeValue", "DateTimeValue2", "BoolValue", "GuidValue", "SmallIntValue", "IntValue", "BigIntValue", "StringValue") VALUES (1004,0,NULL,NULL,0,NULL,2,1532334,NULL,NULL)
	INTO "LinqDataTypes" (ID, "MoneyValue", "DateTimeValue", "DateTimeValue2", "BoolValue", "GuidValue", "SmallIntValue", "IntValue", "BigIntValue", "StringValue") VALUES (1005,1,TIMESTAMP '2020-02-29 17:54:55.123123',NULL,0,NULL,5,NULL,NULL,NULL)
	INTO "LinqDataTypes" (ID, "MoneyValue", "DateTimeValue", "DateTimeValue2", "BoolValue", "GuidValue", "SmallIntValue", "IntValue", "BigIntValue", "StringValue") VALUES (1006,2,TIMESTAMP '2020-02-29 17:54:55.123123',NULL,0,NULL,6,153,NULL,NULL)
SELECT * FROM dual

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12 (asynchronously)

DELETE FROM
	"LinqDataTypes" t1
WHERE
	t1.ID > 1000

