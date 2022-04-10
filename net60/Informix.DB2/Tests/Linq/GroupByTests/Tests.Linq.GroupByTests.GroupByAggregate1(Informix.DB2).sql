﻿BeforeExecute
-- Informix.DB2 Informix

SELECT
	t2.Key_1
FROM
	(
		SELECT
			Cast(CASE
				WHEN (
					SELECT
						Count(*)
					FROM
						Child t1
					WHERE
						selectParam.ParentID = t1.ParentID
				) > 0 AND (
					SELECT
						Avg(c_1.ParentID)
					FROM
						Child c_1
					WHERE
						selectParam.ParentID = c_1.ParentID
				) > 3
					THEN 't'
				ELSE 'f'
			END as BOOLEAN) as Key_1
		FROM
			Parent selectParam
	) t2
GROUP BY
	t2.Key_1

