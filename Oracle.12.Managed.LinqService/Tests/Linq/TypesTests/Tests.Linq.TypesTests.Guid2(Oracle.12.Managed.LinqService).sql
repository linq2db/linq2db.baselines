BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12 (asynchronously)

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
	p."GuidValue" = HEXTORAW('DB2F934043154A4EAC2CCA371604FB4B')
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12 (asynchronously)

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
	p."GuidValue" = HEXTORAW('C070F9D2AC3587499CD55BADB1757436')
FETCH NEXT 2 ROWS ONLY

