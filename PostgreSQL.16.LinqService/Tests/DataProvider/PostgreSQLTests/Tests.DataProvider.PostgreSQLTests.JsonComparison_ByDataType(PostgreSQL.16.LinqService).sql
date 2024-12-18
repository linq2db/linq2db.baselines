BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "JsonComparisonTable1"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "JsonComparisonTable1"
(
	"Text"  text      NULL,
	"Json"  json      NULL,
	"Jsonb" jsonb     NULL
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @Text Text(15) -- String
SET     @Text = '{ "field": 123}'
DECLARE @Json Json -- Object
SET     @Json = '{  "field": 123}'
DECLARE @Jsonb Jsonb -- Object
SET     @Jsonb = '{   "field": 123}'

INSERT INTO "JsonComparisonTable1"
(
	"Text",
	"Json",
	"Jsonb"
)
VALUES
(
	:Text,
	:Json,
	:Jsonb
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"JsonComparisonTable1" r
WHERE
	r."Text"::jsonb = r."Json"::jsonb AND r."Text"::jsonb IS NOT NULL AND r."Json"::jsonb IS NOT NULL OR
	r."Text"::jsonb IS NULL AND r."Json"::jsonb IS NULL

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"JsonComparisonTable1" r
WHERE
	r."Text"::jsonb = r."Jsonb" AND r."Text"::jsonb IS NOT NULL AND r."Jsonb" IS NOT NULL OR
	r."Text"::jsonb IS NULL AND r."Jsonb" IS NULL

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"JsonComparisonTable1" r
WHERE
	r."Json"::jsonb = r."Json"::jsonb AND r."Json"::jsonb IS NOT NULL AND r."Json"::jsonb IS NOT NULL OR
	r."Json"::jsonb IS NULL AND r."Json"::jsonb IS NULL

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"JsonComparisonTable1" r
WHERE
	r."Json"::jsonb = r."Jsonb" AND r."Json"::jsonb IS NOT NULL AND r."Jsonb" IS NOT NULL OR
	r."Json"::jsonb IS NULL AND r."Jsonb" IS NULL

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"JsonComparisonTable1" r
WHERE
	r."Jsonb" = r."Jsonb" AND r."Jsonb" IS NOT NULL AND r."Jsonb" IS NOT NULL OR
	r."Jsonb" IS NULL AND r."Jsonb" IS NULL

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"JsonComparisonTable1" r
WHERE
	r."Json"::jsonb = r."Text"::jsonb AND r."Json"::jsonb IS NOT NULL AND r."Text"::jsonb IS NOT NULL OR
	r."Json"::jsonb IS NULL AND r."Text"::jsonb IS NULL

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"JsonComparisonTable1" r
WHERE
	r."Jsonb" = r."Text"::jsonb AND r."Jsonb" IS NOT NULL AND r."Text"::jsonb IS NOT NULL OR
	r."Jsonb" IS NULL AND r."Text"::jsonb IS NULL

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"JsonComparisonTable1" r
WHERE
	r."Jsonb" = r."Json"::jsonb AND r."Jsonb" IS NOT NULL AND r."Json"::jsonb IS NOT NULL OR
	r."Jsonb" IS NULL AND r."Json"::jsonb IS NULL

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "JsonComparisonTable1"

