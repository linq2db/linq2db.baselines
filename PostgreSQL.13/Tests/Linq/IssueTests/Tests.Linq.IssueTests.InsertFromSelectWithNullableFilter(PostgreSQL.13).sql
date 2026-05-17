-- PostgreSQL.13 PostgreSQL

INSERT INTO "InsertIssueTest"
(
	"Pk",
	"ID",
	"intDataType"
)
SELECT
	t2."ID",
	123,
	t2."ID"
FROM
	(
		SELECT DISTINCT
			"a_Association"."ID"
		FROM
			"InsertIssueTest" t1
				INNER JOIN "InsertIssueTest" "a_Association" ON t1."ID"::Int = "a_Association"."intDataType"
		WHERE
			1 = 0
	) t2

-- PostgreSQL.13 PostgreSQL
DECLARE @p Smallint -- Int16
SET     @p = 1234

INSERT INTO "InsertIssueTest"
(
	"Pk",
	"ID",
	"intDataType"
)
SELECT
	t2."ID",
	123,
	t2."ID"
FROM
	(
		SELECT DISTINCT
			"a_Association"."ID"
		FROM
			"InsertIssueTest" t1
				INNER JOIN "InsertIssueTest" "a_Association" ON t1."ID"::Int = "a_Association"."intDataType"
		WHERE
			t1."ID" = :p
	) t2

-- PostgreSQL.13 PostgreSQL

SELECT
	t1."Pk",
	t1."ID",
	t1."intDataType"
FROM
	"InsertIssueTest" t1

