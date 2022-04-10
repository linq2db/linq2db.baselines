BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @GuidValue Raw(16) -- Binary
SET     @GuidValue = HEXTORAW('C070F9D2AC3587499CD55BADB1757436')

SELECT
	p."GuidValue"
FROM
	"LinqDataTypes" p
WHERE
	p."GuidValue" = :GuidValue

