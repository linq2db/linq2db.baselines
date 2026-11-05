-- PostgreSQL.12 PostgreSQL12
SELECT
	r."Id",
	CASE
		WHEN r."C" IS NULL THEN r."Flag"
		WHEN r."A" IS NULL THEN True
		ELSE r."Flag"
	END
FROM
	"NullableFlagTable" r

-- PostgreSQL.12 PostgreSQL12
SELECT
	t1."Id",
	t1."A",
	t1."B",
	t1."C",
	t1."Flag"
FROM
	"NullableFlagTable" t1

