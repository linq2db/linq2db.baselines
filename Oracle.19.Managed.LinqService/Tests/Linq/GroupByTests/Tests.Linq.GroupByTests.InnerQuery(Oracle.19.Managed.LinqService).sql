﻿BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	t1."Taxonomy"
FROM
	(
		SELECT
			s."PersonID"
		FROM
			"Doctor" s
		GROUP BY
			s."PersonID"
	) s_2
		CROSS APPLY (
			SELECT
				s_1."Taxonomy"
			FROM
				"Doctor" s_1
			WHERE
				s_2."PersonID" = s_1."PersonID"
			FETCH NEXT 1 ROWS ONLY
		) t1

