BeforeExecute
-- Oracle.Managed Oracle12

DELETE FROM
	"LinqDataTypes" t1
WHERE
	t1.ID > 1000

BeforeExecute
-- Oracle.Managed Oracle12

INSERT ALL
	INTO "LinqDataTypes" (ID, "MoneyValue", "DateTimeValue", "DateTimeValue2", "BoolValue", "GuidValue", "SmallIntValue", "IntValue", "BigIntValue", "StringValue") VALUES (1003,0,NULL,NULL,1,Cast('659112effe6ff94dbb6bbb16e413c883' as raw(16)),NULL,NULL,NULL,NULL)
	INTO "LinqDataTypes" (ID, "MoneyValue", "DateTimeValue", "DateTimeValue2", "BoolValue", "GuidValue", "SmallIntValue", "IntValue", "BigIntValue", "StringValue") VALUES (1004,0,NULL,NULL,1,Cast('659112effe6ff94dbb6bbb16e413c883' as raw(16)),NULL,NULL,NULL,NULL)
SELECT * FROM dual

BeforeExecute
-- Oracle.Managed Oracle12

DELETE FROM
	"LinqDataTypes" t1
WHERE
	t1.ID > 1000

