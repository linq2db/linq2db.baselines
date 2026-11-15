-- PostgreSQL.9.5 PostgreSQL
DECLARE @level Integer -- Int32
SET     @level = 2

SELECT
	p."PersonID"
FROM
	"Person" p
WHERE
	CASE
		WHEN p."PersonID" > 2 THEN 2
		ELSE 1
	END = :level
ORDER BY
	p."PersonID"

