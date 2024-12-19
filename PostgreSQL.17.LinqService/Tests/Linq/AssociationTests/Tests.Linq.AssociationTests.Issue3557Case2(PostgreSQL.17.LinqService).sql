BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Data"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Data"
(
	"Id" Int NOT NULL
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1

INSERT INTO "Data"
(
	"Id"
)
VALUES
(
	:Id
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 2

INSERT INTO "Data"
(
	"Id"
)
VALUES
(
	:Id
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 3

INSERT INTO "Data"
(
	"Id"
)
VALUES
(
	:Id
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "SubData1"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "SubData1"
(
	"Id" Int NOT NULL
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 2

INSERT INTO "SubData1"
(
	"Id"
)
VALUES
(
	:Id
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 3

INSERT INTO "SubData1"
(
	"Id"
)
VALUES
(
	:Id
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "SubData2"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "SubData2"
(
	"Id"     Int  NOT NULL,
	"Reason" text     NULL
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 3
DECLARE @Reason Text(5) -- String
SET     @Reason = 'прст1'

INSERT INTO "SubData2"
(
	"Id",
	"Reason"
)
VALUES
(
	:Id,
	:Reason
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 3
DECLARE @Reason Text(5) -- String
SET     @Reason = 'прст2'

INSERT INTO "SubData2"
(
	"Id",
	"Reason"
)
VALUES
(
	:Id,
	:Reason
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	i."Id",
	Coalesce((
		SELECT
			"a_SubDatas"."Reason"
		FROM
			"SubData2" "a_SubDatas"
		WHERE
			"a_SubData"."Id" = "a_SubDatas"."Id"
		LIMIT 1
	), '')
FROM
	"Data" i
		LEFT JOIN "SubData1" "a_SubData" ON i."Id" = "a_SubData"."Id"
ORDER BY
	i."Id"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "SubData2"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "SubData1"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Data"

