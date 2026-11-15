-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @level_1 Int32
SET     @level_1 = 2

SELECT
	p."PersonID"
FROM
	"Person" p
WHERE
	CASE
		WHEN p."PersonID" > 2 THEN 2
		ELSE 1
	END = :level_1
ORDER BY
	p."PersonID"

