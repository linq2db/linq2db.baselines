-- PostgreSQL.11 PostgreSQL
SELECT
	Coalesce(t."Code", '') || Coalesce(t."Title", '')
FROM
	"PrefixedCodeWithTitle" t
LIMIT 2

-- PostgreSQL.11 PostgreSQL
DECLARE @Code Varchar(4) -- String
SET     @Code = 'x:AT'

SELECT
	CASE
		WHEN :Code IN (
			SELECT
				Coalesce(t."Code", '') || Coalesce(t."Title", '')
			FROM
				"PrefixedCodeWithTitle" t
		)
			THEN True
		ELSE False
	END

