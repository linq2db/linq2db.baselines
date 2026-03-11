-- Oracle.11.Managed Oracle11

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

