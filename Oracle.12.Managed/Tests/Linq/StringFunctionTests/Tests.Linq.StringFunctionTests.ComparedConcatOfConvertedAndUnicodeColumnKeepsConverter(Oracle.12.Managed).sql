-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @Code Varchar2(4) -- String
SET     @Code = 'x:AT'

SELECT
	COUNT(*)
FROM
	"PrefixedCodeWithTitleTable" t
WHERE
	(t."Code" || t."Title") LIKE :Code

-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @bound Varchar2(4) -- String
SET     @bound = 'x:AT'

SELECT
	COUNT(*)
FROM
	"PrefixedCodeWithTitleTable" t
WHERE
	(t."Code" || t."Title") = :bound

-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @bound Varchar2(4) -- String
SET     @bound = 'x:AT'

SELECT
	COUNT(*)
FROM
	"PrefixedCodeWithTitleTable" t
WHERE
	(t."Code" || t."Title") = :bound

