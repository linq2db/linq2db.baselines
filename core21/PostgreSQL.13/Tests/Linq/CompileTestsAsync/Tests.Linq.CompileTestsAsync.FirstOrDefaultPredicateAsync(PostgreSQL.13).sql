BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

CREATE TABLE "AsyncDataTable"
(
	"Id" Int NOT NULL,

	CONSTRAINT "PK_AsyncDataTable" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

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
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL (asynchronously)
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Id_1 Integer -- Int32
SET     @Id_1 = 2
DECLARE @p1 Integer -- Int32
SET     @p1 = 2
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	c_2."Value_1"
FROM
	(
		SELECT
			:Id as "Id",
			c_1."Id" as "Value_1"
		FROM
			"AsyncDataTable" c_1
		WHERE
			c_1."Id" = :Id_1
	) c_2
WHERE
	c_2."Id" = :p1
LIMIT :take

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE "AsyncDataTable"

