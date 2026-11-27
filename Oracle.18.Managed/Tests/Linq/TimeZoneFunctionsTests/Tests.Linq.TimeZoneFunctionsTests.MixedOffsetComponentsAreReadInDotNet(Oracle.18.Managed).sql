-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	Coalesce(r."StampN", r."Dto"),
	CASE
		WHEN r."Flag" = 1 THEN r."Dto"
		ELSE r."Stamp"
	END
FROM
	"MixedStampRow" r
ORDER BY
	r."Id"

-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	Coalesce(r."StampN", r."Dto"),
	CASE
		WHEN r."Flag" = 1 THEN r."Dto"
		ELSE r."Stamp"
	END,
	Coalesce(r."StampN", r."Dto")
FROM
	"MixedStampRow" r
ORDER BY
	r."Id"

