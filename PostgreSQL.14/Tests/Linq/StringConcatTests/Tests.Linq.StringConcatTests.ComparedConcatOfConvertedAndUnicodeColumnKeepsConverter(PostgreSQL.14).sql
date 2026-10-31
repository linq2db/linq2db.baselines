-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
DECLARE @bound Varchar(5) -- String
SET     @bound = 'x:c1T'

SELECT
	COUNT(*)
FROM
	"ConvertedConcatTitleRow" p
WHERE
	(p."Conv" || p."Title") = :bound

