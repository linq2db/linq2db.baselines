-- PostgreSQL.13 PostgreSQL12
SELECT
	r."Id",
	CASE
		WHEN r."C" IS NULL THEN r."Flag"
		WHEN r."A" = r."B" OR r."A" IS NULL AND r."B" IS NULL THEN True
		ELSE False
	END
FROM
	"NullableFlagTable" r

-- PostgreSQL.13 PostgreSQL12
SELECT
	t1."Id",
	t1."A",
	t1."B",
	t1."C",
	t1."Flag"
FROM
	"NullableFlagTable" t1

