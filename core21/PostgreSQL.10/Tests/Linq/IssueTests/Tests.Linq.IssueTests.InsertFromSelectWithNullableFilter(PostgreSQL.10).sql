BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

INSERT INTO "AllTypes"
(
	"smallintDataType",
	"intDataType"
)
SELECT
	123,
	t2."smallintDataType"
FROM
	(
		SELECT DISTINCT
			c_1."smallintDataType"
		FROM
			"AllTypes" t1
				INNER JOIN "AllTypes" c_1 ON t1."smallintDataType" = c_1."intDataType"
		WHERE
			t1."smallintDataType" IS NULL
	) t2

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @p1 Smallint -- Int16
SET     @p1 = 1234

INSERT INTO "AllTypes"
(
	"smallintDataType",
	"intDataType"
)
SELECT
	123,
	t2."smallintDataType"
FROM
	(
		SELECT DISTINCT
			c_1."smallintDataType"
		FROM
			"AllTypes" t1
				INNER JOIN "AllTypes" c_1 ON t1."smallintDataType" = c_1."intDataType"
		WHERE
			t1."smallintDataType" = :p1
	) t2

