-- PostgreSQL.19 PostgreSQL12
SELECT
	Coalesce(t."Code", '') || Coalesce(t."Title", '')
FROM
	"PrefixedCodeWithTitle" t
LIMIT 2

-- PostgreSQL.19 PostgreSQL12
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

