﻿BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	g_2."Key_1"
FROM
	(
		SELECT
			EXTRACT(YEAR FROM a_Types."DateTimeValue") as "Key_1"
		FROM
			"Parent" g_1
				LEFT JOIN "LinqDataTypes" a_Types ON g_1."ParentID" = a_Types.ID
	) g_2
GROUP BY
	g_2."Key_1"

