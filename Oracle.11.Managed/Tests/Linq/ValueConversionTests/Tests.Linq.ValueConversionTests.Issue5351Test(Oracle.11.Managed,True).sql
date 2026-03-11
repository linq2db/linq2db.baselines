-- Oracle.11.Managed Oracle11

UPDATE
	"Issue5351Table" x
SET
	"Test" = NULL
WHERE
	x."Id" = 1

-- Oracle.11.Managed Oracle11

SELECT
	x."Id",
	x."Test"
FROM
	"Issue5351Table" x
WHERE
	x."Id" = 1 AND ROWNUM <= 2

-- Oracle.11.Managed Oracle11

UPDATE
	"Issue5351Table" x
SET
	"Test" = 'X'
WHERE
	x."Id" = 2

-- Oracle.11.Managed Oracle11

SELECT
	x."Id",
	x."Test"
FROM
	"Issue5351Table" x
WHERE
	x."Id" = 2 AND ROWNUM <= 2

-- Oracle.11.Managed Oracle11

SELECT
	x."Id",
	x."Test"
FROM
	"Issue5351Table" x
WHERE
	x."Test" = 'X'

