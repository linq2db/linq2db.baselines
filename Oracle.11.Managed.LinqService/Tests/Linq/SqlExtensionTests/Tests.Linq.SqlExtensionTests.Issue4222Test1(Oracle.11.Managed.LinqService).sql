﻿BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	e."Id",
	e."RecSrc",
	e."Value"
FROM
	"Entry" e
WHERE
	(e."RecSrc", e."Value") = (('default', 2007))

