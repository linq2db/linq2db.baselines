BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	CASE
		WHEN NOT EXISTS(
			SELECT
				*
			FROM
				"Child" c_1
			WHERE
				c_1."ParentID" <= 3
		)
			THEN 1
		ELSE 0
	END
FROM SYS.DUAL

