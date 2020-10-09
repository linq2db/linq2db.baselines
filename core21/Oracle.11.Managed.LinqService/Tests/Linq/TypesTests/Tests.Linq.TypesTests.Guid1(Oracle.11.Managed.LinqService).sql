BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @GuidValue_1 Raw(16) -- Binary
SET     @GuidValue_1 = HEXTORAW('C070F9D2AC3587499CD55BADB1757436')

SELECT 
	p.GuidValue
FROM
	LinqDataTypes p
WHERE
	p.GuidValue = :GuidValue_1

