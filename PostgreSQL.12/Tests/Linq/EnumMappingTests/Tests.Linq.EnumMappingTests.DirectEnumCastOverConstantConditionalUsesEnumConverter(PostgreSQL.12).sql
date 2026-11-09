-- PostgreSQL.12 PostgreSQL12
DECLARE @gender Varchar(1) -- String
SET     @gender = 'M'

SELECT
	p."PersonID"
FROM
	"Person" p
WHERE
	:gender = CASE
		WHEN p."PersonID" > 2 THEN 'M'
		ELSE 'F'
	END
ORDER BY
	p."PersonID"

