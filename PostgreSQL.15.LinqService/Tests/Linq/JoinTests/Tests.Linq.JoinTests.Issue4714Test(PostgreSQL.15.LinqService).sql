BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Sample"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Sample"
(
	"SampleId" Int NOT NULL
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Source"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Source"
(
	"Key1" Int NOT NULL,
	"Key2" Int NOT NULL
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "SelectionMap"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "SelectionMap"
(
	"Key1"              Int     NOT NULL,
	"Key2"              Int     NOT NULL,
	"SelectionProperty" decimal NOT NULL
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "YearMap"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "YearMap"
(
	"StartDate" TimeStamp NOT NULL,
	"EndDate"   TimeStamp NOT NULL,
	"Year"      Int       NOT NULL
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	source_2."Id",
	year_1."Year",
	year_1."StartDate",
	year_1."EndDate"
FROM
	"YearMap" year_1
		CROSS JOIN (
			SELECT
				entity."SampleId" as "Id"
			FROM
				"Source" source_1
					INNER JOIN "SelectionMap" map_1 ON source_1."Key1" = map_1."Key1" AND source_1."Key2" = map_1."Key2",
				"Sample" entity
		) source_2

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "YearMap"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "SelectionMap"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Source"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Sample"

