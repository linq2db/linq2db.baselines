BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				1
			FROM
				"Child" c_1
			WHERE
				c_1."ParentID" > 3
		)
			THEN 1
		ELSE 0
	END
FROM SYS.DUAL

