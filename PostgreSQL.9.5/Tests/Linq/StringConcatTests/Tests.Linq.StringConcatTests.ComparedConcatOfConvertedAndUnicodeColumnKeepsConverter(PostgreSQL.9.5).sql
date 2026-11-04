-- PostgreSQL.9.5 PostgreSQL
DECLARE @bound Varchar(5) -- String
SET     @bound = 'x:c1T'

SELECT
	COUNT(*)
FROM
	"ConvertedConcatTitleRow" p
WHERE
	(p."Conv" || p."Title") = :bound

-- PostgreSQL.9.5 PostgreSQL
DECLARE @bound Varchar(5) -- String
SET     @bound = 'x:c1T'

SELECT
	COUNT(*)
FROM
	"ConvertedConcatTitleRow" p
WHERE
	:bound = (p."Conv" || p."Title")

-- PostgreSQL.9.5 PostgreSQL
SELECT
	COUNT(*)
FROM
	"ConvertedConcatTitleRow" p
WHERE
	(p."Conv" || p."Title") IN ('x:c1T')

