﻿BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue3757Level1"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue3757Level1"
(
	"ID"     Int     NOT NULL,
	"ValS"   text        NULL,
	"ValB"   Boolean     NULL,
	"ValInt" Int         NULL,

	CONSTRAINT "PK_Issue3757Level1" PRIMARY KEY ("ID")
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue3757Level2"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue3757Level2"
(
	"ID"       Int     NOT NULL,
	"ParentId" Int     NOT NULL,
	"ValS"     text        NULL,
	"ValB"     Boolean     NULL,
	"ValInt"   Int         NULL,

	CONSTRAINT "PK_Issue3757Level2" PRIMARY KEY ("ID")
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @TypedProperty Text(4) -- String
SET     @TypedProperty = '%de%'

SELECT
	m_1."ID",
	m_1."ValS",
	d."ID",
	d."ValB",
	d."ValInt"
FROM
	(
		SELECT DISTINCT
			l1."ID",
			l1."ValS"
		FROM
			"Issue3757Level1" l1
		WHERE
			 EXISTS (
				SELECT
					*
				FROM
					"Issue3757Level2" c_1
				WHERE
					l1."ID" = c_1."ParentId" AND l1."ValS" LIKE :TypedProperty ESCAPE '~' AND
					l1."ValS" IS NOT NULL
			)
	) m_1
		INNER JOIN "Issue3757Level2" d ON m_1."ID" = d."ParentId"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @TypedProperty Text(4) -- String
SET     @TypedProperty = '%de%'

SELECT
	it."ID",
	it."ValB",
	it."ValS",
	it."ValInt"
FROM
	"Issue3757Level1" it
WHERE
	 EXISTS (
		SELECT
			*
		FROM
			"Issue3757Level2" c_1
		WHERE
			it."ID" = c_1."ParentId" AND it."ValS" LIKE :TypedProperty ESCAPE '~' AND
			it."ValS" IS NOT NULL
	)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue3757Level2"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue3757Level1"

