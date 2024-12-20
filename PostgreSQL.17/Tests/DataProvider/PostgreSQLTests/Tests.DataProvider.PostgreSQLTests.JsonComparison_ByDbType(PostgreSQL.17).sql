BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "JsonComparisonTable2"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "JsonComparisonTable2"
(
	"Text"  text      NULL,
	"Json"  json      NULL,
	"Jsonb" jsonb     NULL
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

INSERT INTO "JsonComparisonTable2"
(
	"Text",
	"Json",
	"Jsonb"
)
VALUES
('{ "field": 123}','{  "field": 123}','{   "field": 123}')

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"JsonComparisonTable2" r
WHERE
	r."Text"::jsonb = r."Json"::jsonb OR r."Text" IS NULL AND r."Json" IS NULL

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"JsonComparisonTable2" r
WHERE
	r."Text"::jsonb = r."Jsonb" OR r."Text" IS NULL AND r."Jsonb" IS NULL

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"JsonComparisonTable2" r
WHERE
	r."Json"::jsonb = r."Json"::jsonb OR r."Json" IS NULL AND r."Json" IS NULL

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"JsonComparisonTable2" r
WHERE
	r."Json"::jsonb = r."Jsonb" OR r."Json" IS NULL AND r."Jsonb" IS NULL

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"JsonComparisonTable2" r
WHERE
	r."Jsonb" = r."Jsonb" OR r."Jsonb" IS NULL AND r."Jsonb" IS NULL

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"JsonComparisonTable2" r
WHERE
	r."Json"::jsonb = r."Text"::jsonb OR r."Json" IS NULL AND r."Text" IS NULL

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"JsonComparisonTable2" r
WHERE
	r."Jsonb" = r."Text"::jsonb OR r."Jsonb" IS NULL AND r."Text" IS NULL

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"JsonComparisonTable2" r
WHERE
	r."Jsonb" = r."Json"::jsonb OR r."Jsonb" IS NULL AND r."Json" IS NULL

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "JsonComparisonTable2"

