-- Informix.DB2 Informix
SELECT
	COUNT(*)
FROM
	PrefixedCodeTable t
WHERE
	t.Code::NVarChar(40) LIKE 'x:A%'

-- Informix.DB2 Informix
DECLARE @bound VarChar(3) -- String
SET     @bound = 'x:A'

SELECT
	COUNT(*)
FROM
	PrefixedCodeTable t
WHERE
	t.Code::NVarChar(40) = @bound

