-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	CASE
		WHEN r."Id" = 1 THEN r."Plain"
		ELSE r."Date"
	END
FROM
	"ShiftedDateRow" r
ORDER BY
	r."Id"

