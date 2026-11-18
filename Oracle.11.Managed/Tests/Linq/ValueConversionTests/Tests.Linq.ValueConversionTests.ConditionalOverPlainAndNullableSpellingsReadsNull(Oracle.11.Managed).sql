-- Oracle.11.Managed Oracle11
SELECT
	CASE
		WHEN r."Id" = 1 THEN r."Plain"
		ELSE r."Date"
	END
FROM
	"Issue5975Row" r
ORDER BY
	r."Id"

