BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @p Raw(16) -- Binary
SET     @p = HEXTORAW('C070F9D2AC3587499CD55BADB1757436')

SELECT
	p."GuidValue"
FROM
	"LinqDataTypes" p
WHERE
	p."GuidValue" = :p

