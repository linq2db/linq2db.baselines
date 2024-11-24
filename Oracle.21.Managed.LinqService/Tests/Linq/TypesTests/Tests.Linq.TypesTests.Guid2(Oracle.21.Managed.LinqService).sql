BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @p Raw(16) -- Binary
SET     @p = HEXTORAW('DB2F934043154A4EAC2CCA371604FB4B')

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
	p."GuidValue" = :p
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @p Raw(16) -- Binary
SET     @p = HEXTORAW('C070F9D2AC3587499CD55BADB1757436')

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
	p."GuidValue" = :p
FETCH NEXT 2 ROWS ONLY

