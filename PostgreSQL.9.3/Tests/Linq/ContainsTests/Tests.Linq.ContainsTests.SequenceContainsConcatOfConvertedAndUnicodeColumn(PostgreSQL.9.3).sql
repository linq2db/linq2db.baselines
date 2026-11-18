-- PostgreSQL.9.3 PostgreSQL
SELECT
	Coalesce(t."Code", '') || Coalesce(t."Title", '')
FROM
	"PrefixedCodeWithTitle" t
LIMIT 2

-- PostgreSQL.9.3 PostgreSQL
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

