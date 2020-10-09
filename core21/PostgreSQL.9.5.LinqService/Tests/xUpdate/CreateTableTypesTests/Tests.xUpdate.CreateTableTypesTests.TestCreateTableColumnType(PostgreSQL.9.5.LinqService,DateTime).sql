BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

CREATE TABLE "CreateTableTypes"
(
	"Id"       Int       NOT NULL,
	"DateTime" TimeStamp NOT NULL
)

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @DateTime Timestamp -- DateTime
SET     @DateTime = '2000-01-01'::date

INSERT INTO "CreateTableTypes"
(
	"Id",
	"DateTime"
)
VALUES
(
	:Id,
	:DateTime
)

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @DateTime Timestamp -- DateTime
SET     @DateTime = '2018-11-24 01:02:03'::timestamp

INSERT INTO "CreateTableTypes"
(
	"Id",
	"DateTime"
)
VALUES
(
	:Id,
	:DateTime
)

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

SELECT 
	t1."Id", 
	t1."DateTime"
FROM
	"CreateTableTypes" t1
ORDER BY
	t1."Id"

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

DROP TABLE "CreateTableTypes"

