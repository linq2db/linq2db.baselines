BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

CREATE TABLE "CreateTableTypes"
(
	"String" text NOT NULL,
	"Id"     Int  NOT NULL
)

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @String Text -- String
SET     @String = ''

INSERT INTO "CreateTableTypes"
(
	"Id",
	"String"
)
VALUES
(
	:Id,
	:String
)

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @String Text(14) -- String
SET     @String = 'test max value'

INSERT INTO "CreateTableTypes"
(
	"Id",
	"String"
)
VALUES
(
	:Id,
	:String
)

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

DROP TABLE "CreateTableTypes"

