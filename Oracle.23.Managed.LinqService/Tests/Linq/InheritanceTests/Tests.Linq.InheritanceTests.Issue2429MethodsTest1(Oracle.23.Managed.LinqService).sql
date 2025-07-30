BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	x."Id",
	x."Value" as "BaseValue"
FROM
	"BaseTable" x
WHERE
	x."Id" = 1
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	x."Id",
	x."Value" as "BaseValue"
FROM
	"BaseTable" x
WHERE
	x."Id" = 1 AND x."Value" = 100
FETCH NEXT 1 ROWS ONLY

