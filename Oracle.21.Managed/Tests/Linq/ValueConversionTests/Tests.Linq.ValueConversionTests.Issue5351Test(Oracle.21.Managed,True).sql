-- Oracle.21.Managed Oracle.Managed Oracle12

UPDATE
	"Issue5351Table" x
SET
	"Test" = NULL
WHERE
	x."Id" = 1

-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	x."Id",
	x."Test"
FROM
	"Issue5351Table" x
WHERE
	x."Id" = 1
FETCH NEXT 2 ROWS ONLY

-- Oracle.21.Managed Oracle.Managed Oracle12

UPDATE
	"Issue5351Table" x
SET
	"Test" = 'X'
WHERE
	x."Id" = 2

-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	x."Id",
	x."Test"
FROM
	"Issue5351Table" x
WHERE
	x."Id" = 2
FETCH NEXT 2 ROWS ONLY

-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	x."Id",
	x."Test"
FROM
	"Issue5351Table" x
WHERE
	x."Test" = 'X'

