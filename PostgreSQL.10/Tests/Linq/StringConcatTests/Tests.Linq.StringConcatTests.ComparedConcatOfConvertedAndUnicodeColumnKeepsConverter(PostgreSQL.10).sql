-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @bound Varchar(5) -- String
SET     @bound = 'x:c1T'

SELECT
	COUNT(*)
FROM
	"ConvertedConcatTitleRow" p
WHERE
	(p."Conv" || p."Title") = :bound

