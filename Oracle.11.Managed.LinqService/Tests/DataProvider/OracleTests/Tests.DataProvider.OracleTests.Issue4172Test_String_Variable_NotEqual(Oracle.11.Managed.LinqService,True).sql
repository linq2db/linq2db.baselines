BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	u.ROLE
FROM
	ISSUE4172TABLE u
WHERE
	u.ROLE IS NOT NULL

