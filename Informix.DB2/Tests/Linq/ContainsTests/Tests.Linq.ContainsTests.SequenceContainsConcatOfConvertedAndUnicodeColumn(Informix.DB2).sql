-- Informix.DB2 Informix
SELECT FIRST 2
	Nvl(t.Code, '') || Nvl(t.Title, '')
FROM
	PrefixedCodeWithTitle t

-- Informix.DB2 Informix
DECLARE @Code VarChar(4) -- String
SET     @Code = 'x:AT'

SELECT
	EXISTS(
		SELECT
			*
		FROM
			PrefixedCodeWithTitle t
		WHERE
			@Code::VarChar(4) = (Nvl(t.Code, '') || Nvl(t.Title, ''))
	)
FROM table(set{1})

