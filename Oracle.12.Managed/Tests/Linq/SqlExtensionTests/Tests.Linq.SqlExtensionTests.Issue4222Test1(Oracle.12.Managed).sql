BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	e."Id",
	e."RecSrc",
	e."Value"
FROM
	"Entry" e
WHERE
	(e."RecSrc", e."Value") = (('default', 2007))

