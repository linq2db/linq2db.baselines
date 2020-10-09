BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

CREATE TABLE "CreateTableTypes"
(
	"Id"              Int NOT NULL,
	"IntEnumNullable" Int     NULL
)

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @IntEnumNullable Integer -- Int32
SET     @IntEnumNullable = NULL

INSERT INTO "CreateTableTypes"
(
	"Id",
	"IntEnumNullable"
)
VALUES
(
	:Id,
	:IntEnumNullable
)

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @IntEnumNullable Integer -- Int32
SET     @IntEnumNullable = 60

INSERT INTO "CreateTableTypes"
(
	"Id",
	"IntEnumNullable"
)
VALUES
(
	:Id,
	:IntEnumNullable
)

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT 
	t1."Id", 
	t1."IntEnumNullable"
FROM
	"CreateTableTypes" t1
ORDER BY
	t1."Id"

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

DROP TABLE "CreateTableTypes"

