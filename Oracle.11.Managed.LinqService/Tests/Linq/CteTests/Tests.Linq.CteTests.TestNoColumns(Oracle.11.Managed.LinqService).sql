BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	COUNT(*)
FROM
	"Child" t1

BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

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
-- Oracle.11.Managed Oracle11 (asynchronously)

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
-- Oracle.11.Managed Oracle11 (asynchronously)

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
		WHEN EXISTS(
			SELECT
				*
			FROM
				CTE1_ t1
		) THEN 1
		ELSE 0
	END
FROM SYS.DUAL

