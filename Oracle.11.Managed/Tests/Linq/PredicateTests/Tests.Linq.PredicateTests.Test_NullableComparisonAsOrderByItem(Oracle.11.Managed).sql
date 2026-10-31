-- Oracle.11.Managed Oracle11
SELECT
	r."Id"
FROM
	"BooleanTable" r
ORDER BY
	CASE
		WHEN r."Value1" <> r."Value4" OR r."Value4" IS NULL THEN 1
		ELSE 0
	END,
	r."Id"

