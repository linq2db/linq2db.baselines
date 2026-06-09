-- YDB Ydb

SELECT
	p.Key_1 || '2'u as c1
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
	) p
WHERE
	(p.Key_1 || '2'u) = '22'u

