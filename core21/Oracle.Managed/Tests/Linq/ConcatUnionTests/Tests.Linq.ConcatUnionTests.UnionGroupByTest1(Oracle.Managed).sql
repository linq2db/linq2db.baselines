BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	t1."month_1",
	t1."year_1",
	t1."int_1"
FROM
	(
		SELECT
			To_Number(To_Char(selectParam."DateTimeValue", 'MM')) as "month_1",
			To_Number(To_Char(selectParam."DateTimeValue", 'YYYY')) as "year_1",
			1 as "int_1"
		FROM
			"LinqDataTypes" selectParam
		GROUP BY
			To_Number(To_Char(selectParam."DateTimeValue", 'MM')),
			To_Number(To_Char(selectParam."DateTimeValue", 'YYYY'))
	) t1
UNION
SELECT
	t2."SmallIntValue",
	t2."SmallIntValue",
	3
FROM
	"LinqDataTypes" t2
UNION
SELECT
	To_Number(To_Char(t3."DateTimeValue", 'YYYY')),
	To_Number(To_Char(t3."DateTimeValue", 'YYYY')),
	2
FROM
	"LinqDataTypes" t3

BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	t1.ID,
	t1."MoneyValue",
	t1."DateTimeValue",
	t1."BoolValue",
	t1."GuidValue",
	t1."BinaryValue",
	t1."SmallIntValue",
	t1."StringValue"
FROM
	"LinqDataTypes" t1

