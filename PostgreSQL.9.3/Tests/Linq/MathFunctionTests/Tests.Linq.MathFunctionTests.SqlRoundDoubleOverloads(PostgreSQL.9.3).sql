-- PostgreSQL.9.3 PostgreSQL
SELECT
	r."Id",
	CASE
		WHEN r."F" > 0 THEN FLOOR(r."F" + 0.5)
		ELSE CEIL(r."F" - 0.5)
	END,
	CASE
		WHEN r."F"::decimal >= 0 OR r."F" IS NULL THEN FLOOR(r."F"::decimal * POWER(10, r."P") + 0.5) / POWER(10, r."P")
		ELSE CEIL(r."F"::decimal * POWER(10, r."P") - 0.5) / POWER(10, r."P")
	END::Float,
	CASE
		WHEN r."F"::decimal - FLOOR(r."F"::decimal) = 0.5 THEN ROUND(r."F"::decimal * 0.5, 0) * 2
		ELSE ROUND(r."F"::decimal, 0)
	END::Float,
	CASE
		WHEN (r."F"::decimal * 2 = ROUND(r."F"::decimal * 2, r."P") OR r."F" IS NULL AND (r."F" IS NULL OR r."P" IS NULL)) AND (r."F"::decimal <> ROUND(r."F"::decimal, r."P") OR r."F" IS NULL AND NOT (r."F" IS NULL OR r."P" IS NULL) OR r."F" IS NOT NULL AND r."P" IS NULL)
			THEN ROUND(r."F"::decimal / 2, r."P") * 2
		ELSE ROUND(r."F"::decimal, r."P")
	END::Float
FROM
	"RoundValues" r
ORDER BY
	r."Id"

-- PostgreSQL.9.3 PostgreSQL
SELECT
	t1."Id",
	t1."D",
	t1."F",
	t1."P"
FROM
	"RoundValues" t1

