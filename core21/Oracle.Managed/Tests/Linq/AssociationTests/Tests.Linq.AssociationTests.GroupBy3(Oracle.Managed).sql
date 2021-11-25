BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	To_Number(To_Char(a_Types."DateTimeValue", 'YYYY'))
FROM
	"Parent" selectParam
		LEFT JOIN "LinqDataTypes" a_Types ON selectParam."ParentID" = a_Types.ID
GROUP BY
	To_Number(To_Char(a_Types."DateTimeValue", 'YYYY'))

