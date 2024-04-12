BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "MainTable"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "MainTable"
(
	"Id"    Int  NOT NULL,
	"Field" text     NULL
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Field Text(7) -- String
SET     @Field = 'value 1'

INSERT INTO "MainTable"
(
	"Id",
	"Field"
)
VALUES
(
	:Id,
	:Field
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Field Text(7) -- String
SET     @Field = 'value 2'

INSERT INTO "MainTable"
(
	"Id",
	"Field"
)
VALUES
(
	:Id,
	:Field
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 3
DECLARE @Field Text(7) -- String
SET     @Field = 'value 3'

INSERT INTO "MainTable"
(
	"Id",
	"Field"
)
VALUES
(
	:Id,
	:Field
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "AssociatedTable"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "AssociatedTable"
(
	"Id" Int NOT NULL
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1

INSERT INTO "AssociatedTable"
(
	"Id"
)
VALUES
(
	:Id
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 3

INSERT INTO "AssociatedTable"
(
	"Id"
)
VALUES
(
	:Id
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @id Integer -- Int32
SET     @id = 3

UPDATE
	"MainTable"
SET
	"Field" = 'test'
FROM
	"MainTable" t1
		INNER JOIN "AssociatedTable" "a_AssociatedRequired" ON t1."Id" = "a_AssociatedRequired"."Id"
WHERE
	t1."Id" = :id AND "a_AssociatedRequired"."Id" = "MainTable"."Id"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."Id",
	t1."Field"
FROM
	"MainTable" t1
ORDER BY
	t1."Id"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "AssociatedTable"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "MainTable"

