-- Oracle.18.Managed Oracle.Managed Oracle12

DELETE FROM
	"LinqDataTypes" t1
WHERE
	t1.ID > 1000

-- Oracle.18.Managed Oracle.Managed Oracle12

INSERT ALL
	INTO "LinqDataTypes" (ID, "MoneyValue", "DateTimeValue", "DateTimeValue2", "BoolValue", "SmallIntValue", "IntValue", "BigIntValue", "StringValue") VALUES (1003,0,TIMESTAMP '2020-02-29 17:54:55.123123',NULL,1,NULL,NULL,NULL,NULL)
	INTO "LinqDataTypes" (ID, "MoneyValue", "DateTimeValue", "DateTimeValue2", "BoolValue", "SmallIntValue", "IntValue", "BigIntValue", "StringValue") VALUES (1004,0,NULL,NULL,0,2,1532334,NULL,NULL)
	INTO "LinqDataTypes" (ID, "MoneyValue", "DateTimeValue", "DateTimeValue2", "BoolValue", "SmallIntValue", "IntValue", "BigIntValue", "StringValue") VALUES (1005,1,TIMESTAMP '2020-02-29 17:54:55.123123',NULL,0,5,NULL,NULL,NULL)
	INTO "LinqDataTypes" (ID, "MoneyValue", "DateTimeValue", "DateTimeValue2", "BoolValue", "SmallIntValue", "IntValue", "BigIntValue", "StringValue") VALUES (1006,2,TIMESTAMP '2020-02-29 17:54:55.123123',NULL,0,6,153,NULL,NULL)
SELECT * FROM dual

-- Oracle.18.Managed Oracle.Managed Oracle12

DELETE FROM
	"LinqDataTypes" t1
WHERE
	t1.ID > 1000

