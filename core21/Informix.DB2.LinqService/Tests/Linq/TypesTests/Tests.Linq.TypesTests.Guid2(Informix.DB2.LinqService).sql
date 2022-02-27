BeforeExecute
-- Informix.DB2 Informix
DECLARE @GuidValue_1 Char(36) -- StringFixedLength
SET     @GuidValue_1 = 'd2f970c0-35ac-4987-9cd5-5badb1757436'

SELECT FIRST 2
	p.ID,
	p.MoneyValue,
	p.DateTimeValue,
	p.BoolValue,
	p.GuidValue,
	p.BinaryValue,
	p.SmallIntValue,
	p.StringValue
FROM
	LinqDataTypes p
WHERE
	p.GuidValue = @GuidValue_1

BeforeExecute
-- Informix.DB2 Informix
DECLARE @GuidValue_1 Char(36) -- StringFixedLength
SET     @GuidValue_1 = '40932fdb-1543-4e4a-ac2c-ca371604fb4b'

SELECT FIRST 2
	p.ID,
	p.MoneyValue,
	p.DateTimeValue,
	p.BoolValue,
	p.GuidValue,
	p.BinaryValue,
	p.SmallIntValue,
	p.StringValue
FROM
	LinqDataTypes p
WHERE
	p.GuidValue = @GuidValue_1

