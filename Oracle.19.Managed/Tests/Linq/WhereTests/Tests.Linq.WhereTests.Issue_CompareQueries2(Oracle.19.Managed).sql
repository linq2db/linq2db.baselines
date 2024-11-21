BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

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
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

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
FETCH NEXT 2 ROWS ONLY

