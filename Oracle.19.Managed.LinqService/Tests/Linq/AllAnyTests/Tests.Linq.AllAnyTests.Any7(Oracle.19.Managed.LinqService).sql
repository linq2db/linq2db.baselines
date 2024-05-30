BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				"Child" t1
		) THEN 1
		ELSE 0
	END
FROM SYS.DUAL

