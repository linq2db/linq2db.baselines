BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

INSERT ALL
	INTO "LinqDataTypes" (ID, "MoneyValue", "DateTimeValue", "BoolValue", "BinaryValue", "SmallIntValue", "StringValue") VALUES (4000,1000,TO_TIMESTAMP('2001-01-11 01:11:21.100000', 'YYYY-MM-DD HH24:MI:SS.FF6'),1,NULL,0,NULL)
	INTO "LinqDataTypes" (ID, "MoneyValue", "DateTimeValue", "BoolValue", "BinaryValue", "SmallIntValue", "StringValue") VALUES (4001,1001,TO_TIMESTAMP('2001-01-11 01:11:21.100000', 'YYYY-MM-DD HH24:MI:SS.FF6'),1,NULL,1,NULL)
	INTO "LinqDataTypes" (ID, "MoneyValue", "DateTimeValue", "BoolValue", "BinaryValue", "SmallIntValue", "StringValue") VALUES (4002,1002,TO_TIMESTAMP('2001-01-11 01:11:21.100000', 'YYYY-MM-DD HH24:MI:SS.FF6'),1,NULL,2,NULL)
	INTO "LinqDataTypes" (ID, "MoneyValue", "DateTimeValue", "BoolValue", "BinaryValue", "SmallIntValue", "StringValue") VALUES (4003,1003,TO_TIMESTAMP('2001-01-11 01:11:21.100000', 'YYYY-MM-DD HH24:MI:SS.FF6'),1,NULL,3,NULL)
	INTO "LinqDataTypes" (ID, "MoneyValue", "DateTimeValue", "BoolValue", "BinaryValue", "SmallIntValue", "StringValue") VALUES (4004,1004,TO_TIMESTAMP('2001-01-11 01:11:21.100000', 'YYYY-MM-DD HH24:MI:SS.FF6'),1,NULL,4,NULL)
	INTO "LinqDataTypes" (ID, "MoneyValue", "DateTimeValue", "BoolValue", "BinaryValue", "SmallIntValue", "StringValue") VALUES (4005,1005,TO_TIMESTAMP('2001-01-11 01:11:21.100000', 'YYYY-MM-DD HH24:MI:SS.FF6'),1,NULL,5,NULL)
	INTO "LinqDataTypes" (ID, "MoneyValue", "DateTimeValue", "BoolValue", "BinaryValue", "SmallIntValue", "StringValue") VALUES (4006,1006,TO_TIMESTAMP('2001-01-11 01:11:21.100000', 'YYYY-MM-DD HH24:MI:SS.FF6'),1,NULL,6,NULL)
	INTO "LinqDataTypes" (ID, "MoneyValue", "DateTimeValue", "BoolValue", "BinaryValue", "SmallIntValue", "StringValue") VALUES (4007,1007,TO_TIMESTAMP('2001-01-11 01:11:21.100000', 'YYYY-MM-DD HH24:MI:SS.FF6'),1,NULL,7,NULL)
	INTO "LinqDataTypes" (ID, "MoneyValue", "DateTimeValue", "BoolValue", "BinaryValue", "SmallIntValue", "StringValue") VALUES (4008,1008,TO_TIMESTAMP('2001-01-11 01:11:21.100000', 'YYYY-MM-DD HH24:MI:SS.FF6'),1,NULL,8,NULL)
	INTO "LinqDataTypes" (ID, "MoneyValue", "DateTimeValue", "BoolValue", "BinaryValue", "SmallIntValue", "StringValue") VALUES (4009,1009,TO_TIMESTAMP('2001-01-11 01:11:21.100000', 'YYYY-MM-DD HH24:MI:SS.FF6'),1,NULL,9,NULL)
SELECT * FROM dual

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DELETE FROM
	"LinqDataTypes" t1
WHERE
	t1.ID >= 4000

