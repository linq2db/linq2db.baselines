-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 3

SELECT
	x."Id"
FROM
	"NullsTable" x
ORDER BY
	x."Value" NULLS LAST,
	x."Id"
FETCH NEXT :take ROWS ONLY

-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 3

SELECT
	x."Id"
FROM
	"NullsTable" x
ORDER BY
	x."Value" NULLS LAST,
	x."Id"
FETCH NEXT :take ROWS ONLY

