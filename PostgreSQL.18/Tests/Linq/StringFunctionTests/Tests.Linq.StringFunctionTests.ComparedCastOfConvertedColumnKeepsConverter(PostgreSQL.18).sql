-- PostgreSQL.18 PostgreSQL12
DECLARE @Code Varchar(3) -- String
SET     @Code = 'x:A'

SELECT
	COUNT(*)
FROM
	"PrefixedCodeTable" t
WHERE
	t."Code"::VarChar(40) LIKE :Code

-- PostgreSQL.18 PostgreSQL12
DECLARE @bound Varchar(3) -- String
SET     @bound = 'x:A'

SELECT
	COUNT(*)
FROM
	"PrefixedCodeTable" t
WHERE
	t."Code"::VarChar(40) = :bound

