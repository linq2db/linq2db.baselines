-- PostgreSQL.9.2 PostgreSQL
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

