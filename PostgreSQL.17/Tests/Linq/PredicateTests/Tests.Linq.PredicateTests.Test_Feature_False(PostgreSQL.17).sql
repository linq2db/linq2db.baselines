BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "FeatureTable"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

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
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

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
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	((r."One" = r."One") = FALSE) = True

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	((r."Zero" = r."Zero") = FALSE) = True

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	((r."Null" = r."Null") = FALSE) = True

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	((r."One" = r."Zero") = FALSE) = True

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	((r."One" = r."Null") = FALSE) = True

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	((r."Zero" = r."Null") = FALSE) = True

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	((r."One" = r."One") <> FALSE) = True

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	((r."Zero" = r."Zero") <> FALSE) = True

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	((r."Null" = r."Null") <> FALSE) = True

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	((r."One" = r."Zero") <> FALSE) = True

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	((r."One" = r."Null") <> FALSE) = True

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	((r."Zero" = r."Null") <> FALSE) = True

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "FeatureTable"

