-- Informix.DB2 Informix
DECLARE @Code VarChar(3) -- String
SET     @Code = 'x:A'

SELECT
	EXISTS(
		SELECT
			*
		FROM
			PrefixedCode t
		WHERE
			@Code::VarChar(3) = t.Code::NVarChar(40)
	)
FROM table(set{1})

