-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	r."Id",
	CASE
		WHEN r.A = r.B THEN 1
		ELSE 0
	END
FROM
	"NullableFlagTable" r
ORDER BY
	r."Id"

