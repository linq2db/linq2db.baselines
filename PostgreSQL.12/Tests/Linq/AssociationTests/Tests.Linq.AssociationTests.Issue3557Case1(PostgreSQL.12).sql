BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Data"

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Data"
(
	"Id" Int NOT NULL
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

INSERT INTO "Data"
(
	"Id"
)
VALUES
(1),
(2),
(3)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "SubData1"

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "SubData1"
(
	"Id" Int NOT NULL
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

INSERT INTO "SubData1"
(
	"Id"
)
VALUES
(2),
(3)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "SubData2"

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "SubData2"
(
	"Id"     Int  NOT NULL,
	"Reason" text     NULL
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

INSERT INTO "SubData2"
(
	"Id",
	"Reason"
)
VALUES
(3,'прст1'),
(3,'прст2')

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	i."Id",
	"a_SubData"."Id",
	t1."Reason",
	t1.is_empty
FROM
	"Data" i
		LEFT JOIN "SubData1" "a_SubData" ON i."Id" = "a_SubData"."Id"
		LEFT JOIN LATERAL (
			SELECT
				s."Reason",
				1 as is_empty
			FROM
				"SubData2" s
			WHERE
				"a_SubData"."Id" = s."Id"
			LIMIT :take
		) t1 ON 1=1
ORDER BY
	i."Id"

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "SubData2"

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "SubData1"

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Data"

