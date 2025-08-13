BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	t1."c1"
FROM
	(
		SELECT
			COUNT(p."PersonID") as "c1"
		FROM
			"Person" p
		WHERE
			p."PersonID" IN (1, 2) AND p."PersonID" NOT IN (
				SELECT
					p_1."PersonID"
				FROM
					"Person" p_1
				WHERE
					p_1."PersonID" IN (3)
			)
	) t1
WHERE
	ROWNUM <= 2

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	t1."c1"
FROM
	(
		SELECT
			COUNT(p."PersonID") as "c1"
		FROM
			"Person" p
		WHERE
			p."PersonID" IN (3) AND p."PersonID" NOT IN (
				SELECT
					p_1."PersonID"
				FROM
					"Person" p_1
				WHERE
					p_1."PersonID" IN (1, 2)
			)
	) t1
WHERE
	ROWNUM <= 2

