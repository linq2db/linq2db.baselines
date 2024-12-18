BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "DisTable"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "DisTable"
(
	"DisTypeID" Int NOT NULL
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "JurTable"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "JurTable"
(
	"JurCode" text NOT NULL,

	CONSTRAINT "PK_JurTable" PRIMARY KEY ("JurCode")
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "DisTypeTable"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "DisTypeTable"
(
	"DisTypeID" Int  NOT NULL,
	"JurCode"   text NOT NULL,

	CONSTRAINT "PK_DisTypeTable" PRIMARY KEY ("DisTypeID")
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	d."DisTypeID"
FROM
	"DisTable" d
		INNER JOIN "DisTypeTable" "a_DisType" ON CASE
			WHEN d."DisTypeID" = 1 THEN 1
			WHEN d."DisTypeID" = 2 THEN 2
			WHEN d."DisTypeID" = 4 THEN 4
			WHEN d."DisTypeID" = 5 THEN 5
		END = "a_DisType"."DisTypeID" AND CASE
			WHEN d."DisTypeID" = 1 THEN 1
			WHEN d."DisTypeID" = 2 THEN 2
			WHEN d."DisTypeID" = 4 THEN 4
			WHEN d."DisTypeID" = 5 THEN 5
		END IS NOT NULL
		INNER JOIN "JurTable" j ON "a_DisType"."JurCode" = j."JurCode"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "DisTypeTable"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "JurTable"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "DisTable"

