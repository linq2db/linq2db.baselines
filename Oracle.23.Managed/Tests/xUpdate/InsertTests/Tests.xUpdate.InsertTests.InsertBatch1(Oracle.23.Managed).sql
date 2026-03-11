-- Oracle.23.Managed Oracle.Managed Oracle12

DELETE FROM
	"LinqDataTypes" t1
WHERE
	t1.ID > 1000

-- Oracle.23.Managed Oracle.Managed Oracle12

INSERT ALL
	INTO "LinqDataTypes" (ID, "MoneyValue", "DateTimeValue", "DateTimeValue2", "BoolValue", "GuidValue", "SmallIntValue", "IntValue", "BigIntValue", "StringValue") VALUES (1003,0,NULL,NULL,1,HEXTORAW('659112EFFE6FF94DBB6BBB16E413C883'),NULL,NULL,NULL,NULL)
	INTO "LinqDataTypes" (ID, "MoneyValue", "DateTimeValue", "DateTimeValue2", "BoolValue", "GuidValue", "SmallIntValue", "IntValue", "BigIntValue", "StringValue") VALUES (1004,0,NULL,NULL,1,HEXTORAW('659112EFFE6FF94DBB6BBB16E413C883'),NULL,NULL,NULL,NULL)
SELECT * FROM dual

-- Oracle.23.Managed Oracle.Managed Oracle12

DELETE FROM
	"LinqDataTypes" t1
WHERE
	t1.ID > 1000

