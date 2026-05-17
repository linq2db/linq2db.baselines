-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT DISTINCT
	EXTRACT(YEAR FROM a_Types."DateTimeValue")
FROM
	"Parent" g_1
		LEFT JOIN "LinqDataTypes" a_Types ON g_1."ParentID" = a_Types.ID

