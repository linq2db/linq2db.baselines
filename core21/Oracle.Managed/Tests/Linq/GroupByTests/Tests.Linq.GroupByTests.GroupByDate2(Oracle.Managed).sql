BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[ID],
	[t1].[MoneyValue],
	[t1].[DateTimeValue],
	[t1].[DateTimeValue2],
	[t1].[BoolValue],
	[t1].[GuidValue],
	[t1].[SmallIntValue],
	[t1].[IntValue],
	[t1].[BigIntValue],
	[t1].[StringValue]
FROM
	[LinqDataTypes] [t1]

BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	Sum(t1.MoneyValue),
	t1.Key_2,
	t1.Key_1
FROM
	(
		SELECT
			To_Number(To_Char(selectParam.DateTimeValue, 'MM')) as Key_1,
			To_Number(To_Char(selectParam.DateTimeValue, 'YYYY')) as Key_2,
			selectParam.MoneyValue
		FROM
			LinqDataTypes selectParam
	) t1
GROUP BY
	t1.Key_1,
	t1.Key_2

