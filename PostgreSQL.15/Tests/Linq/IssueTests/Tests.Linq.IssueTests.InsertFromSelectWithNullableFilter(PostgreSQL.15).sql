BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "InsertIssueTest"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "InsertIssueTest"
(
	"ID"          SmallInt NOT NULL,
	"intDataType" Int          NULL
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

INSERT INTO "InsertIssueTest"
(
	"ID",
	"intDataType"
)
VALUES
(0,0),
(0,0),
(1234,1234),
(1234,1234)

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @cond Smallint -- Int16
SET     @cond = 0

INSERT INTO "InsertIssueTest"
(
	"ID",
	"intDataType"
)
SELECT
	123,
	t2."ID"
FROM
	(
		SELECT DISTINCT
			"a_Association"."ID"
		FROM
			"InsertIssueTest" t1
				INNER JOIN "InsertIssueTest" "a_Association" ON t1."ID" = "a_Association"."intDataType"
		WHERE
			t1."ID" = :cond
	) t2

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "InsertIssueTest"

