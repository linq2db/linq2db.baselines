-- Oracle.11.Managed Oracle11

SELECT
	(
		SELECT
			p."Value1"
		FROM
			"Parent" p
		WHERE
			ROWNUM <= 1
	)
FROM SYS.DUAL

