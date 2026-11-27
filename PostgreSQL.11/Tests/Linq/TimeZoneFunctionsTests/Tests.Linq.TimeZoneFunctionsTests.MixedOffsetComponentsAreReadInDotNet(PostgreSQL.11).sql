-- PostgreSQL.11 PostgreSQL
SELECT
	Coalesce(r."StampN", r."Dto"),
	CASE
		WHEN r."Flag" THEN r."Dto"
		ELSE r."Stamp"
	END
FROM
	"MixedStampRow" r
ORDER BY
	r."Id"

-- PostgreSQL.11 PostgreSQL
SELECT
	Coalesce(r."StampN", r."Dto"),
	CASE
		WHEN r."Flag" THEN r."Dto"
		ELSE r."Stamp"
	END,
	Coalesce(r."StampN", r."Dto")
FROM
	"MixedStampRow" r
ORDER BY
	r."Id"

