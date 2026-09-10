-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 3

SELECT
	x."Id"
FROM
	"NullsTable" x
ORDER BY
	x."Value",
	x."Id"
FETCH NEXT :take ROWS ONLY

-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 3

SELECT
	x."Id"
FROM
	"NullsTable" x
ORDER BY
	x."Value",
	x."Id"
FETCH NEXT :take ROWS ONLY

