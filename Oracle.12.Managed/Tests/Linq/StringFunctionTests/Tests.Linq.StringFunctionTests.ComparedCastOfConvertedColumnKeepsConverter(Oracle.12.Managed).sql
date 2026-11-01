-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @Code Varchar2(4) -- String
SET     @Code = 'x:A%'

SELECT
	COUNT(*)
FROM
	"PrefixedCodeTable" t
WHERE
	CAST(t."Code" AS VarChar2(40)) LIKE :Code

-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @bound Varchar2(3) -- String
SET     @bound = 'x:A'

SELECT
	COUNT(*)
FROM
	"PrefixedCodeTable" t
WHERE
	CAST(t."Code" AS VarChar2(40)) = :bound

