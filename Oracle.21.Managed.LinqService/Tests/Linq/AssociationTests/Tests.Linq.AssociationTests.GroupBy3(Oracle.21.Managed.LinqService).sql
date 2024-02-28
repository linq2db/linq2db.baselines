BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	g_2."Year_1"
FROM
	(
		SELECT
			To_Number(To_Char(a_Types."DateTimeValue", 'YYYY')) as "Year_1"
		FROM
			"Parent" g_1
				LEFT JOIN "LinqDataTypes" a_Types ON (g_1."ParentID" = a_Types.ID)
	) g_2
GROUP BY
	g_2."Year_1"

