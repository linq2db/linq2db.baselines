-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			"Parent" t1
	) as "Parents",
	(
		SELECT
			COUNT(*)
		FROM
			"Child" t2
	) as "Children"
FROM SYS.DUAL
FETCH NEXT 2 ROWS ONLY

