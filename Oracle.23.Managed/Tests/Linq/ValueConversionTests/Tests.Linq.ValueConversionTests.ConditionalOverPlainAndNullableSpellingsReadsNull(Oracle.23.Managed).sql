-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	CASE
		WHEN r."Id" = 1 THEN r."Plain"
		ELSE r."Date"
	END
FROM
	"Issue5975Row" r
ORDER BY
	r."Id"

