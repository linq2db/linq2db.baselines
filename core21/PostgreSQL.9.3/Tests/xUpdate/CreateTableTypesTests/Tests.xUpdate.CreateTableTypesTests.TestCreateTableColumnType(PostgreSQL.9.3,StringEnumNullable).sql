BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

CREATE TABLE "CreateTableTypes"
(
	"Id"                 Int  NOT NULL,
	"StringEnumNullable" text     NULL
)

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @StringEnumNullable Text -- String
SET     @StringEnumNullable = NULL

INSERT INTO "CreateTableTypes"
(
	"Id",
	"StringEnumNullable"
)
VALUES
(
	:Id,
	:StringEnumNullable
)

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @StringEnumNullable Text(2) -- String
SET     @StringEnumNullable = '40'

INSERT INTO "CreateTableTypes"
(
	"Id",
	"StringEnumNullable"
)
VALUES
(
	:Id,
	:StringEnumNullable
)

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

DROP TABLE "CreateTableTypes"

