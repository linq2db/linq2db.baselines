-- YDB Ydb

SELECT
	m_1.Key_1 as Key_1,
	d.ParentID as ParentID,
	d.ChildID as ChildID
FROM
	(
		SELECT DISTINCT
			CASE
				WHEN g_1.ParentID > 2 THEN CASE
					WHEN g_1.ParentID > 3 THEN '1'u
					ELSE '2'u
				END
				ELSE '3'u
			END as Key_1
		FROM
			Child g_1
	) m_1
		INNER JOIN Child d ON m_1.Key_1 = CASE
			WHEN d.ParentID > 2 THEN CASE
				WHEN d.ParentID > 3 THEN '1'u
				ELSE '2'u
			END
			ELSE '3'u
		END

-- YDB Ydb

SELECT DISTINCT
	CASE
		WHEN g_1.ParentID > 2 THEN CASE
			WHEN g_1.ParentID > 3 THEN '1'u
			ELSE '2'u
		END
		ELSE '3'u
	END as Key_1
FROM
	Child g_1

