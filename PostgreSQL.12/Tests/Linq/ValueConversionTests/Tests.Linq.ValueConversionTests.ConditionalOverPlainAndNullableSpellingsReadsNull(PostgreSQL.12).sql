-- PostgreSQL.12 PostgreSQL12
SELECT
	CASE
		WHEN r."Id" = 1 THEN r."Plain"
		ELSE r."Date"
	END
FROM
	"ShiftedDateRow" r
ORDER BY
	r."Id"

