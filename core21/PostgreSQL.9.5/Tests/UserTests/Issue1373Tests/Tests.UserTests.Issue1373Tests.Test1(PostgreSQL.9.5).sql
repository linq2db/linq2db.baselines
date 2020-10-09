BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

CREATE TABLE "Issue1373Tests"
(
	"Id"     Int  NOT NULL,
	"Field1" text     NULL,

	CONSTRAINT "PK_Issue1373Tests" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Field1 Text -- String
SET     @Field1 = NULL

INSERT INTO "Issue1373Tests"
(
	"Id",
	"Field1"
)
VALUES
(
	:Id,
	:Field1
)

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Field1 Text -- String
SET     @Field1 = NULL

INSERT INTO "Issue1373Tests"
(
	"Id",
	"Field1"
)
VALUES
(
	:Id,
	:Field1
)

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 3
DECLARE @Field1 Text(4) -- String
SET     @Field1 = 'test'

INSERT INTO "Issue1373Tests"
(
	"Id",
	"Field1"
)
VALUES
(
	:Id,
	:Field1
)

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

SELECT 
	t1."Id", 
	t1."Field1"
FROM
	"Issue1373Tests" t1
ORDER BY
	t1."Id"

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

DROP TABLE "Issue1373Tests"

