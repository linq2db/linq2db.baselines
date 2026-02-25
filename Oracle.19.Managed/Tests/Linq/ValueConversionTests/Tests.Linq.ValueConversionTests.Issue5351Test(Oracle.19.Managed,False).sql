-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Test Char -- AnsiStringFixedLength
SET     @Test = NULL

UPDATE
	"Issue5351Table" x
SET
	"Test" = :Test
WHERE
	x."Id" = 1

-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	x."Id",
	x."Test"
FROM
	"Issue5351Table" x
WHERE
	x."Id" = 1
FETCH NEXT 2 ROWS ONLY

-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Test Char(1) -- AnsiStringFixedLength
SET     @Test = 'X'

UPDATE
	"Issue5351Table" x
SET
	"Test" = :Test
WHERE
	x."Id" = 2

-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	x."Id",
	x."Test"
FROM
	"Issue5351Table" x
WHERE
	x."Id" = 2
FETCH NEXT 2 ROWS ONLY

-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Test Char(1) -- AnsiStringFixedLength
SET     @Test = 'X'

SELECT
	x."Id",
	x."Test"
FROM
	"Issue5351Table" x
WHERE
	x."Test" = :Test

