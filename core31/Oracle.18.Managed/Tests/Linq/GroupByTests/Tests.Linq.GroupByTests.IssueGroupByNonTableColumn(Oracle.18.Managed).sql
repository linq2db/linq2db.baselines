﻿BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	Count(*)
FROM
	(
		SELECT
			t4."Count_1"
		FROM
			(
				SELECT
					t3."c1" as "Key_1",
					Count(*) as "Count_1"
				FROM
					(
						SELECT
							1 as "c1"
						FROM
							"Person" t1
						UNION ALL
						SELECT
							2 as "c1"
						FROM
							"Person" t2
					) t3
				GROUP BY
					t3."c1"
			) t4
		WHERE
			t4."Key_1" = 1
	) t5
WHERE
	t5."Count_1" > 1

