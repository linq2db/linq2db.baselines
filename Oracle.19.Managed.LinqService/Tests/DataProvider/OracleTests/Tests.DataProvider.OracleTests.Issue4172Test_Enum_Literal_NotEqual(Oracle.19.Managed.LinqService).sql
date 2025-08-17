BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	u.ROLE
FROM
	ISSUE4172TABLE u
WHERE
	u.ROLE IS NOT NULL

