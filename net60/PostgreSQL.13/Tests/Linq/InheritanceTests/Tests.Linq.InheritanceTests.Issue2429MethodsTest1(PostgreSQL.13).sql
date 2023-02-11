BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "BaseTable"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "BaseTable"
(
	"Id"    Int NOT NULL,
	"Value" Int NOT NULL,

	CONSTRAINT "PK_BaseTable" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

INSERT INTO "BaseTable"
(
	"Id",
	"Value"
)
VALUES
(1,100)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	x."Id",
	x."Value"
FROM
	"BaseTable" x
WHERE
	x."Id" = 1
LIMIT :take

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	x."Id",
	x."Value"
FROM
	"BaseTable" x
WHERE
	x."Id" = 1 AND x."Value" = 100
LIMIT :take

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "BaseTable"

