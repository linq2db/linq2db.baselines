BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DELETE FROM
	LinqDataTypes t1
WHERE
	t1.ID > 1000

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

INSERT ALL
	INTO LinqDataTypes (ID, MoneyValue, DateTimeValue, DateTimeValue2, BoolValue, GuidValue, SmallIntValue, IntValue, BigIntValue, StringValue) VALUES (1003,0,NULL,NULL,1,Cast('659112effe6ff94dbb6bbb16e413c883' as raw(16)),NULL,NULL,NULL,NULL)
	INTO LinqDataTypes (ID, MoneyValue, DateTimeValue, DateTimeValue2, BoolValue, GuidValue, SmallIntValue, IntValue, BigIntValue, StringValue) VALUES (1004,0,TO_TIMESTAMP('2020-02-29 17:54:55.123123', 'YYYY-MM-DD HH24:MI:SS.FF6'),NULL,0,NULL,2,1532334,NULL,NULL)
	INTO LinqDataTypes (ID, MoneyValue, DateTimeValue, DateTimeValue2, BoolValue, GuidValue, SmallIntValue, IntValue, BigIntValue, StringValue) VALUES (1005,1,TO_TIMESTAMP('2020-02-29 17:54:55.123123', 'YYYY-MM-DD HH24:MI:SS.FF6'),NULL,0,NULL,5,NULL,NULL,NULL)
	INTO LinqDataTypes (ID, MoneyValue, DateTimeValue, DateTimeValue2, BoolValue, GuidValue, SmallIntValue, IntValue, BigIntValue, StringValue) VALUES (1006,2,TO_TIMESTAMP('2020-02-29 17:54:55.123123', 'YYYY-MM-DD HH24:MI:SS.FF6'),NULL,0,NULL,6,153,NULL,NULL)
SELECT * FROM dual

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DELETE FROM
	LinqDataTypes t1
WHERE
	t1.ID > 1000

