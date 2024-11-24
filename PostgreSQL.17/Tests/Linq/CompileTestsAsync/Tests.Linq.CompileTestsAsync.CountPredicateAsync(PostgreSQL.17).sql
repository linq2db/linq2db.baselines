BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "AsyncDataTable"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "AsyncDataTable"
(
	"Id" Int NOT NULL,

	CONSTRAINT "PK_AsyncDataTable" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

INSERT INTO "AsyncDataTable"
(
	"Id"
)
VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL (asynchronously)
DECLARE @p Integer -- Int32
SET     @p = 2

SELECT
	COUNT(*)
FROM
	"AsyncDataTable" c_1
WHERE
	c_1."Id" = :p

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "AsyncDataTable"

