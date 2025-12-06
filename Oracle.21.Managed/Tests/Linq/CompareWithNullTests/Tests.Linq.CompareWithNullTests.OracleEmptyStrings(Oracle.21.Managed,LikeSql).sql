-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	x."Id"
FROM
	"Src" x
WHERE
	x."Text" IS NULL
FETCH NEXT 1 ROWS ONLY

-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @p Varchar2 -- String
SET     @p = ''

SELECT
	x."Id"
FROM
	"Src" x
WHERE
	x."Text" = :p
FETCH NEXT 1 ROWS ONLY

