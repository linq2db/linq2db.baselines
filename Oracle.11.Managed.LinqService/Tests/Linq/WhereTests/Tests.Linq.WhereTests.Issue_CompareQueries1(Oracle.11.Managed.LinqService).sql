BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	t1."c1"
FROM
	(
		SELECT
			COUNT(p."PersonID") as "c1"
		FROM
			"Person" p
		WHERE
			p."PersonID" IN (1, 2)
	) t1
WHERE
	ROWNUM <= 2

BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	t1."c1"
FROM
	(
		SELECT
			COUNT(p."PersonID") as "c1"
		FROM
			"Person" p
		WHERE
			1 = 0
	) t1
WHERE
	ROWNUM <= 2

