BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "InsertIssueTest"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "InsertIssueTest"
(
	"ID"          SmallInt NOT NULL,
	"intDataType" Int          NULL
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @ID Smallint -- Int16
SET     @ID = 0
DECLARE @intDataType Integer -- Int32
SET     @intDataType = 0

INSERT INTO "InsertIssueTest"
(
	"ID",
	"intDataType"
)
VALUES
(
	:ID,
	:intDataType
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @ID Smallint -- Int16
SET     @ID = 0
DECLARE @intDataType Integer -- Int32
SET     @intDataType = 0

INSERT INTO "InsertIssueTest"
(
	"ID",
	"intDataType"
)
VALUES
(
	:ID,
	:intDataType
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @ID Smallint -- Int16
SET     @ID = 1234
DECLARE @intDataType Integer -- Int32
SET     @intDataType = 1234

INSERT INTO "InsertIssueTest"
(
	"ID",
	"intDataType"
)
VALUES
(
	:ID,
	:intDataType
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @ID Smallint -- Int16
SET     @ID = 1234
DECLARE @intDataType Integer -- Int32
SET     @intDataType = 1234

INSERT INTO "InsertIssueTest"
(
	"ID",
	"intDataType"
)
VALUES
(
	:ID,
	:intDataType
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

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
			1 = 0
	) t2

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @cond Smallint -- Int16
SET     @cond = 1234

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
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."ID",
	t1."intDataType"
FROM
	"InsertIssueTest" t1

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "InsertIssueTest"

