BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"JsonComparisonTable1" r
WHERE
	r."Text"::jsonb = r."Json"::jsonb OR r."Text" IS NULL AND r."Json" IS NULL

BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"JsonComparisonTable1" r
WHERE
	r."Text"::jsonb = r."Jsonb" OR r."Text" IS NULL AND r."Jsonb" IS NULL

BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"JsonComparisonTable1" r

BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"JsonComparisonTable1" r
WHERE
	r."Json"::jsonb = r."Jsonb" OR r."Json" IS NULL AND r."Jsonb" IS NULL

BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"JsonComparisonTable1" r

BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"JsonComparisonTable1" r
WHERE
	r."Json"::jsonb = r."Text"::jsonb OR r."Json" IS NULL AND r."Text" IS NULL

BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"JsonComparisonTable1" r
WHERE
	r."Jsonb" = r."Text"::jsonb OR r."Jsonb" IS NULL AND r."Text" IS NULL

BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"JsonComparisonTable1" r
WHERE
	r."Jsonb" = r."Json"::jsonb OR r."Jsonb" IS NULL AND r."Json" IS NULL

