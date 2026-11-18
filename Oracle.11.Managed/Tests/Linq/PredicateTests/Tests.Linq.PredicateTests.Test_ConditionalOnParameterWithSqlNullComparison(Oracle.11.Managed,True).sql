-- Oracle.11.Managed Oracle11
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

