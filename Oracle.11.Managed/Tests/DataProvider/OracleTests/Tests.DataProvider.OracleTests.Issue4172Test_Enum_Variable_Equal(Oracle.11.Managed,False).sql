BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	u.ROLE
FROM
	ISSUE4172TABLE u
WHERE
	u.ROLE IS NULL

