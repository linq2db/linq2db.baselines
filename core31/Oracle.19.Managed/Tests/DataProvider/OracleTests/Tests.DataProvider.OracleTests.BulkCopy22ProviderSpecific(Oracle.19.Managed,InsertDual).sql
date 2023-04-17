BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

DELETE FROM
	"LinqDataTypes" t1
WHERE
	t1.ID > 1000

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

INSERT INTO "LinqDataTypes"
(
	ID,
	"MoneyValue",
	"DateTimeValue",
	"DateTimeValue2",
	"BoolValue",
	"SmallIntValue",
	"IntValue",
	"BigIntValue",
	"StringValue"
)

	SELECT 1003,0,TIMESTAMP '2020-02-29 17:54:55.123123',NULL,1,NULL,NULL,NULL,NULL FROM DUAL  UNION ALL
	SELECT 1004,0,NULL,NULL,0,2,1532334,NULL,NULL FROM DUAL  UNION ALL
	SELECT 1005,1,TIMESTAMP '2020-02-29 17:54:55.123123',NULL,0,5,NULL,NULL,NULL FROM DUAL  UNION ALL
	SELECT 1006,2,TIMESTAMP '2020-02-29 17:54:55.123123',NULL,0,6,153,NULL,NULL FROM DUAL 

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

DELETE FROM
	"LinqDataTypes" t1
WHERE
	t1.ID > 1000

