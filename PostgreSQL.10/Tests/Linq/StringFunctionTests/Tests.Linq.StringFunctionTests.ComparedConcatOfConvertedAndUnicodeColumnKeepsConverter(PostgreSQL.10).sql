-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @Code Varchar(4) -- String
SET     @Code = 'x:AT'

SELECT
	COUNT(*)
FROM
	"PrefixedCodeWithTitleTable" t
WHERE
	(Coalesce(t."Code", '') || Coalesce(t."Title", '')) LIKE :Code

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @bound Varchar(4) -- String
SET     @bound = 'x:AT'

SELECT
	COUNT(*)
FROM
	"PrefixedCodeWithTitleTable" t
WHERE
	(Coalesce(t."Code", '') || Coalesce(t."Title", '')) = :bound

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @bound Varchar(4) -- String
SET     @bound = 'x:AT'

SELECT
	COUNT(*)
FROM
	"PrefixedCodeWithTitleTable" t
WHERE
	(Coalesce(t."Code", '') || Coalesce(t."Title", '')) = :bound

