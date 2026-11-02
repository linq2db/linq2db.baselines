-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @bound Varchar2(5) -- String
SET     @bound = 'x:c1T'

SELECT
	COUNT(*)
FROM
	"ConvertedConcatTitleRow" p
WHERE
	(p."Conv" || p."Title") = :bound

-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @bound Varchar2(5) -- String
SET     @bound = 'x:c1T'

SELECT
	COUNT(*)
FROM
	"ConvertedConcatTitleRow" p
WHERE
	:bound = (p."Conv" || p."Title")

-- Oracle.21.Managed Oracle.Managed Oracle12
SELECT
	COUNT(*)
FROM
	"ConvertedConcatTitleRow" p
WHERE
	(p."Conv" || p."Title") IN ('x:c1T')

