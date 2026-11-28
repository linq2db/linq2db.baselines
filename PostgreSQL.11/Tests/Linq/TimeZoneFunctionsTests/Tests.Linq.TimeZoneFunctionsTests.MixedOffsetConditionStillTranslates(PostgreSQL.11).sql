-- PostgreSQL.11 PostgreSQL
SELECT
	t1."Id",
	t1."Flag",
	t1."Dto",
	t1."Dto2",
	t1."Stamp",
	t1."StampN"
FROM
	"MixedStampRow" t1
LIMIT 2

-- PostgreSQL.11 PostgreSQL
SELECT
	(CASE
		WHEN r."Stamp" < r."Dto" THEN r."Dto"
		ELSE r."Dto2"
	END AT TIME ZONE 'UTC')
FROM
	"MixedStampRow" r
LIMIT 2

