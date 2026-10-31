-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
DECLARE @bound Varchar(5) -- String
SET     @bound = 'x:c1T'

SELECT
	COUNT(*)
FROM
	"ConvertedConcatTitleRow" p
WHERE
	(p."Conv" || p."Title") = :bound

