BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	CASE
		WHEN 1 IN (
			SELECT
				c_1."ParentID"
			FROM
				"Child" c_1
		)
			THEN 1
		ELSE 0
	END
FROM SYS.DUAL

