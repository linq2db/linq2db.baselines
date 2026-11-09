-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @gender Varchar2(1) -- String
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

