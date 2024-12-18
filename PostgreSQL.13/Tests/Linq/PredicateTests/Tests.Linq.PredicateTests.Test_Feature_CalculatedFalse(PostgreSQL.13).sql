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
	((r."One" = r."One") = (1=0)) = True

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	((r."Zero" = r."Zero") = (1=0)) = True

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	((r."Null" = r."Null") = (1=0)) = True

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	((r."One" = r."Zero") = (1=0)) = True

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	((r."One" = r."Null") = (1=0)) = True

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	((r."Zero" = r."Null") = (1=0)) = True

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	((r."One" = r."One") <> (1=0)) = True

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	((r."Zero" = r."Zero") <> (1=0)) = True

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	((r."Null" = r."Null") <> (1=0)) = True

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	((r."One" = r."Zero") <> (1=0)) = True

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	((r."One" = r."Null") <> (1=0)) = True

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	((r."Zero" = r."Null") <> (1=0)) = True

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "FeatureTable"

