-- PostgreSQL.9.3 PostgreSQL
DECLARE @Code Varchar(3) -- String
SET     @Code = 'x:A'

SELECT
	EXISTS(
		SELECT
			*
		FROM
			"PrefixedCode" t
		WHERE
			:Code = t."Code"::VarChar(40)
	)

