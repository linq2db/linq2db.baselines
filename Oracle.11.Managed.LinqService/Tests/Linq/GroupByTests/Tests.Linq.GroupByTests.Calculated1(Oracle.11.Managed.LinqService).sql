﻿BeforeExecute
--  Oracle.11.Managed Oracle11

SELECT
	m_1."Key_1",
	d."ParentID",
	d."ChildID"
FROM
	(
		SELECT DISTINCT
			CASE
				WHEN g_1."ParentID" > 2 THEN CASE
					WHEN g_1."ParentID" > 3 THEN '1'
					ELSE '2'
				END
				ELSE '3'
			END as "Key_1"
		FROM
			"Child" g_1
	) m_1
		INNER JOIN "Child" d ON m_1."Key_1" = CASE
			WHEN d."ParentID" > 2 THEN CASE
				WHEN d."ParentID" > 3 THEN '1'
				ELSE '2'
			END
			ELSE '3'
		END

BeforeExecute
--  Oracle.11.Managed Oracle11

SELECT
	g_2."Key_1"
FROM
	(
		SELECT
			CASE
				WHEN g_1."ParentID" > 2 THEN CASE
					WHEN g_1."ParentID" > 3 THEN '1'
					ELSE '2'
				END
				ELSE '3'
			END as "Key_1"
		FROM
			"Child" g_1
	) g_2
GROUP BY
	g_2."Key_1"

