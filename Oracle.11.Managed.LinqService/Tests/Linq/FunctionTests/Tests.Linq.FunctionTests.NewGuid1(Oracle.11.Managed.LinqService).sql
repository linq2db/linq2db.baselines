BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	p."GuidValue"
FROM
	"LinqDataTypes" p
WHERE
	p."GuidValue" <> Sys_Guid()

