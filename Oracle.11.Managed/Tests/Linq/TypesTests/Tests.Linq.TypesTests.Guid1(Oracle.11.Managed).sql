BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @p Raw(16) -- Binary
SET     @p = HEXTORAW('C070F9D2AC3587499CD55BADB1757436')

SELECT
	p."GuidValue"
FROM
	"LinqDataTypes" p
WHERE
	p."GuidValue" = :p

