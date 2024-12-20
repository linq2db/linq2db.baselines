﻿BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "JsonComparisonTable1"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "JsonComparisonTable1"
(
	"Text"  text      NULL,
	"Json"  json      NULL,
	"Jsonb" jsonb     NULL
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
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
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	"JsonComparisonTable1" r
WHERE
	r."Text"::jsonb = r."Json"::jsonb OR r."Text"::jsonb IS NULL AND r."Json"::jsonb IS NULL

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	"JsonComparisonTable1" r
WHERE
	r."Text"::jsonb = r."Jsonb" OR r."Text"::jsonb IS NULL AND r."Jsonb" IS NULL

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	"JsonComparisonTable1" r
WHERE
	r."Json"::jsonb = r."Json"::jsonb OR r."Json"::jsonb IS NULL AND r."Json"::jsonb IS NULL

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	"JsonComparisonTable1" r
WHERE
	r."Json"::jsonb = r."Jsonb" OR r."Json"::jsonb IS NULL AND r."Jsonb" IS NULL

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	"JsonComparisonTable1" r
WHERE
	r."Jsonb" = r."Jsonb" OR r."Jsonb" IS NULL AND r."Jsonb" IS NULL

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	"JsonComparisonTable1" r
WHERE
	r."Json"::jsonb = r."Text"::jsonb OR r."Json"::jsonb IS NULL AND r."Text"::jsonb IS NULL

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	"JsonComparisonTable1" r
WHERE
	r."Jsonb" = r."Text"::jsonb OR r."Jsonb" IS NULL AND r."Text"::jsonb IS NULL

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	"JsonComparisonTable1" r
WHERE
	r."Jsonb" = r."Json"::jsonb OR r."Jsonb" IS NULL AND r."Json"::jsonb IS NULL

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "JsonComparisonTable1"

