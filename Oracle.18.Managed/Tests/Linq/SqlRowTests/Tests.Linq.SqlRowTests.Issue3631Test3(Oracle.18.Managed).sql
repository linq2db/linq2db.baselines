﻿BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	x."Country",
	x."State"
FROM
	"Issue3631Table" x
WHERE
	(x."Country", x."State") IN (
		SELECT
			t1."Item1",
			t1."Item2"
		FROM
			(
				SELECT 'US' AS "Item1", 'CA' AS "Item2" FROM sys.dual
				UNION ALL
				SELECT 'US', 'NY' FROM sys.dual) t1
	)

