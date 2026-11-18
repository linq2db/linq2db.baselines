-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Code Varchar2(3) -- String
SET     @Code = 'x:A'

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				"PrefixedCode" t
			WHERE
				:Code = CAST(t."Code" AS VarChar2(40))
		)
			THEN 1
		ELSE 0
	END
FROM SYS.DUAL

