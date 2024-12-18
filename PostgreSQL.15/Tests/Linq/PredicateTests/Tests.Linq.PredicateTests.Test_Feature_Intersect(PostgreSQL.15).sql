BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "FeatureTable"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

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
-- PostgreSQL.15 PostgreSQL

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
-- PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	EXISTS(
		SELECT
			r."One"
		INTERSECT
		SELECT
			r."One"
	)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	EXISTS(
		SELECT
			r."Zero"
		INTERSECT
		SELECT
			r."Zero"
	)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	EXISTS(
		SELECT
			r."Null"
		INTERSECT
		SELECT
			r."Null"
	)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	EXISTS(
		SELECT
			r."One"
		INTERSECT
		SELECT
			r."Zero"
	)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	EXISTS(
		SELECT
			r."One"
		INTERSECT
		SELECT
			r."Null"
	)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	EXISTS(
		SELECT
			r."Zero"
		INTERSECT
		SELECT
			r."Null"
	)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	NOT EXISTS(
		SELECT
			r."One"
		INTERSECT
		SELECT
			r."One"
	)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	NOT EXISTS(
		SELECT
			r."Zero"
		INTERSECT
		SELECT
			r."Zero"
	)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	NOT EXISTS(
		SELECT
			r."Null"
		INTERSECT
		SELECT
			r."Null"
	)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	NOT EXISTS(
		SELECT
			r."One"
		INTERSECT
		SELECT
			r."Zero"
	)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	NOT EXISTS(
		SELECT
			r."One"
		INTERSECT
		SELECT
			r."Null"
	)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	NOT EXISTS(
		SELECT
			r."Zero"
		INTERSECT
		SELECT
			r."Null"
	)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "FeatureTable"

