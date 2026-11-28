-- Oracle.11.Managed Oracle11
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

-- Oracle.11.Managed Oracle11
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

