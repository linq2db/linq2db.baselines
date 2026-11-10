-- PostgreSQL.11 PostgreSQL
DECLARE @Code Varchar(4) -- String
SET     @Code = 'x:A%'

SELECT
	COUNT(*)
FROM
	"PrefixedCodeTable" t
WHERE
	t."Code"::VarChar(40) LIKE :Code

-- PostgreSQL.11 PostgreSQL
DECLARE @bound Varchar(3) -- String
SET     @bound = 'x:A'

SELECT
	COUNT(*)
FROM
	"PrefixedCodeTable" t
WHERE
	t."Code"::VarChar(40) = :bound

