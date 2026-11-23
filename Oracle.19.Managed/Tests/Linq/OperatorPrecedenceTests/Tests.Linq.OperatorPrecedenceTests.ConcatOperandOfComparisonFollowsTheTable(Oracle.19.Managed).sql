-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @value Varchar2(1) -- String
SET     @value = 'x'

SELECT
	r."Id"
FROM
	"ConcatRow" r
WHERE
	r.S || 'x' = :value

