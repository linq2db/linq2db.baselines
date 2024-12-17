﻿BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"Child" t1

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

WITH CTE1_ ("c1")
AS
(
	SELECT
		1
	FROM
		"Child" t1
)
SELECT
	COUNT(*)
FROM
	CTE1_ t2

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

WITH CTE1_ ("c1")
AS
(
	SELECT
		1
	FROM
		"Child" c_1
)
SELECT
	COUNT(*)
FROM
	CTE1_ t1

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

WITH CTE1_ ("c1")
AS
(
	SELECT
		1
	FROM
		"Child" c_1
)
SELECT
	CASE
		WHEN  EXISTS (
			SELECT
				*
			FROM
				CTE1_ t1
		) THEN 1
		ELSE 0
	END
FROM SYS.DUAL

