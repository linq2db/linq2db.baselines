-- Oracle.11.Managed Oracle11
SELECT
	Trunc((p.ID * 7 + 1) / 2)
FROM
	"LinqDataTypes" p
ORDER BY
	p.ID

-- Oracle.11.Managed Oracle11
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

-- Oracle.11.Managed Oracle11
SELECT
	Trunc((p.ID * -7 - 1) / 2)
FROM
	"LinqDataTypes" p
ORDER BY
	p.ID

-- Oracle.11.Managed Oracle11
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

-- Oracle.11.Managed Oracle11
SELECT
	Trunc((p.ID * 7 + 1) / (p.ID - 100))
FROM
	"LinqDataTypes" p
ORDER BY
	p.ID

-- Oracle.11.Managed Oracle11
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

-- Oracle.11.Managed Oracle11
SELECT
	Trunc((CAST(p.ID AS Number(19)) * 9 + 2) / 4)
FROM
	"LinqDataTypes" p
ORDER BY
	p.ID

-- Oracle.11.Managed Oracle11
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

-- Oracle.11.Managed Oracle11
SELECT
	Trunc((CAST(p.ID AS Number(19)) * 7 + 1) / 2)
FROM
	"LinqDataTypes" p
ORDER BY
	p.ID

-- Oracle.11.Managed Oracle11
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

-- Oracle.11.Managed Oracle11
SELECT
	Trunc((CAST(p.ID AS Decimal) * 9 + 2) / 4)
FROM
	"LinqDataTypes" p
ORDER BY
	p.ID

-- Oracle.11.Managed Oracle11
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

-- Oracle.11.Managed Oracle11
SELECT
	p.ID
FROM
	"LinqDataTypes" p
WHERE
	Trunc((CAST(p.ID AS Decimal) * 9 + 2) / 4) * 4 = CAST(p.ID AS Decimal) * 9 + 2
ORDER BY
	p.ID

-- Oracle.11.Managed Oracle11
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

-- Oracle.11.Managed Oracle11
SELECT
	Trunc((p.ID * 7 + 1) / 2)
FROM
	"LinqDataTypes" p
ORDER BY
	p.ID

-- Oracle.11.Managed Oracle11
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

-- Oracle.11.Managed Oracle11
DECLARE @divisor Int32
SET     @divisor = 4

SELECT
	Trunc((p.ID * 9 + 2) / :divisor)
FROM
	"LinqDataTypes" p
ORDER BY
	p.ID

-- Oracle.11.Managed Oracle11
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

-- Oracle.11.Managed Oracle11
SELECT
	-(p.ID * 7 + 1)
FROM
	"LinqDataTypes" p
ORDER BY
	p.ID

-- Oracle.11.Managed Oracle11
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

-- Oracle.11.Managed Oracle11
SELECT
	p.ID
FROM
	"LinqDataTypes" p
WHERE
	Trunc((p.ID * 7 + 1) / 2) * 2 = p.ID * 7 + 1
ORDER BY
	p.ID

-- Oracle.11.Managed Oracle11
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

-- Oracle.11.Managed Oracle11
SELECT
	CAST(Trunc((p.ID * 7 + 1) / 2) AS VarChar(255))
FROM
	"LinqDataTypes" p
ORDER BY
	p.ID

-- Oracle.11.Managed Oracle11
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

-- Oracle.11.Managed Oracle11
SELECT
	CAST(p.ID AS Float) / 2D
FROM
	"LinqDataTypes" p
ORDER BY
	p.ID

-- Oracle.11.Managed Oracle11
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

-- Oracle.11.Managed Oracle11
SELECT
	CAST(p.ID AS Decimal(28, 10)) / 2
FROM
	"LinqDataTypes" p
ORDER BY
	p.ID

-- Oracle.11.Managed Oracle11
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

