-- PostgreSQL.9.3 PostgreSQL
SELECT
	CASE
		WHEN r."Id" = 1 THEN r."Plain"
		ELSE r."Date"
	END
FROM
	"ShiftedDateRow" r
ORDER BY
	r."Id"

