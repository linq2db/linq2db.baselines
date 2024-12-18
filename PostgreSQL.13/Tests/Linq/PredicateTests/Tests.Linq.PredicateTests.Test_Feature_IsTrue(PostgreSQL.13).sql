BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "FeatureTable"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "FeatureTable"
(
	"Id"       Int     NOT NULL,
	"One"      Int         NULL,
	"Zero"     Int         NULL,
	"Null"     Int         NULL,
	"True"     Boolean     NULL,
	"False"    Boolean     NULL,
	"BoolNull" Boolean     NULL
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

INSERT INTO "FeatureTable"
(
	"Id",
	"One",
	"Zero",
	"Null",
	"True",
	"False",
	"BoolNull"
)
VALUES
(1,1,0,NULL,True,False,NULL)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	(r."One" = r."One") IS TRUE

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	(r."Zero" = r."Zero") IS TRUE

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	(r."Null" = r."Null") IS TRUE

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	(r."One" = r."Zero") IS TRUE

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	(r."One" = r."Null") IS TRUE

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	(r."Zero" = r."Null") IS TRUE

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	(r."One" = r."One") IS NOT TRUE

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	(r."Zero" = r."Zero") IS NOT TRUE

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	(r."Null" = r."Null") IS NOT TRUE

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	(r."One" = r."Zero") IS NOT TRUE

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	(r."One" = r."Null") IS NOT TRUE

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	(r."Zero" = r."Null") IS NOT TRUE

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "FeatureTable"

