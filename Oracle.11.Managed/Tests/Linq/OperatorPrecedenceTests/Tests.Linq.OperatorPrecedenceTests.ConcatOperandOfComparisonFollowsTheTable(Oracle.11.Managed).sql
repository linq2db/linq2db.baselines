-- Oracle.11.Managed Oracle11
DECLARE @value Varchar2(1) -- String
SET     @value = 'x'

SELECT
	r."Id"
FROM
	"ConcatRow" r
WHERE
	r.S || 'x' = :value

