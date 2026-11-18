-- Oracle.11.Managed Oracle11
DECLARE @Code Varchar2(4) -- String
SET     @Code = 'x:AT'

SELECT
	COUNT(*)
FROM
	"PrefixedCodeWithTitleTable" t
WHERE
	(t."Code" || t."Title") LIKE :Code

-- Oracle.11.Managed Oracle11
DECLARE @bound Varchar2(4) -- String
SET     @bound = 'x:AT'

SELECT
	COUNT(*)
FROM
	"PrefixedCodeWithTitleTable" t
WHERE
	(t."Code" || t."Title") = :bound

-- Oracle.11.Managed Oracle11
DECLARE @bound Varchar2(4) -- String
SET     @bound = 'x:AT'

SELECT
	COUNT(*)
FROM
	"PrefixedCodeWithTitleTable" t
WHERE
	(t."Code" || t."Title") = :bound

