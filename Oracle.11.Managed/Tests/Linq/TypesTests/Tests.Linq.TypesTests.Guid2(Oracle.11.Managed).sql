-- Oracle.11.Managed Oracle11

SELECT
	p.ID,
	p."MoneyValue",
	p."DateTimeValue",
	p."BoolValue",
	p."GuidValue",
	p."BinaryValue",
	p."SmallIntValue",
	p."StringValue"
FROM
	"LinqDataTypes" p
WHERE
	p."GuidValue" = HEXTORAW('DB2F934043154A4EAC2CCA371604FB4B') AND
	ROWNUM <= 2

-- Oracle.11.Managed Oracle11

SELECT
	p.ID,
	p."MoneyValue",
	p."DateTimeValue",
	p."BoolValue",
	p."GuidValue",
	p."BinaryValue",
	p."SmallIntValue",
	p."StringValue"
FROM
	"LinqDataTypes" p
WHERE
	p."GuidValue" = HEXTORAW('C070F9D2AC3587499CD55BADB1757436') AND
	ROWNUM <= 2

