BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	p."GuidValue"
FROM
	"LinqDataTypes" p
WHERE
	p."GuidValue" <> Sys_Guid()

