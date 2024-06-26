﻿BeforeExecute
-- Informix.DB2 Informix

SELECT
	t4.Count_1,
	t3.Count_1
FROM
	(
		SELECT
			COUNT(*) as Count_1
		FROM
			(
				SELECT FIRST 1
					*
				FROM
					Person t1
			) a1
	) t4
		FULL JOIN (
			SELECT
				COUNT(*) as Count_1
			FROM
				(
					SELECT
						NULL::Int as c1
					FROM
						Person t2
					WHERE
						1 = 0
				) a2
			GROUP BY
				a2.c1
		) t3 ON t4.Count_1 = t3.Count_1
WHERE
	(t4.Count_1 IS NULL OR t3.Count_1 IS NULL)

