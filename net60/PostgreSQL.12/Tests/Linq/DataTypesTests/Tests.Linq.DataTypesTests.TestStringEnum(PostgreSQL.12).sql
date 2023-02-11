BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "StringEnumTable"

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "StringEnumTable"
(
	"Id"             Int  NOT NULL,
	"Column"         text NOT NULL,
	"ColumnNullable" text     NULL
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

INSERT INTO "StringEnumTable"
(
	"Id",
	"Column",
	"ColumnNullable"
)
VALUES
(1,'val=1',NULL),
(2,'value=2','value=33')

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @Column_1 Text(7) -- String
SET     @Column_1 = 'value=2'
DECLARE @ColumnNullable Text(8) -- String
SET     @ColumnNullable = 'value=33'

SELECT
	r."Id",
	r."Column",
	r."ColumnNullable"
FROM
	"StringEnumTable" r
WHERE
	r."Column" = :Column_1 AND r."ColumnNullable" = :ColumnNullable

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	r."Id",
	r."Column",
	r."ColumnNullable"
FROM
	"StringEnumTable" r
WHERE
	r."Column" = 'value=2' AND r."ColumnNullable" = 'value=33'

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DELETE FROM
	"StringEnumTable" t1

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Column_1 Text(5) -- String
SET     @Column_1 = 'val=1'
DECLARE @ColumnNullable Text -- String
SET     @ColumnNullable = NULL

INSERT INTO "StringEnumTable"
(
	"Id",
	"Column",
	"ColumnNullable"
)
VALUES
(
	:Id,
	:Column_1,
	:ColumnNullable
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Column_1 Text(7) -- String
SET     @Column_1 = 'value=2'
DECLARE @ColumnNullable Text(8) -- String
SET     @ColumnNullable = 'value=33'

INSERT INTO "StringEnumTable"
(
	"Id",
	"Column",
	"ColumnNullable"
)
VALUES
(
	:Id,
	:Column_1,
	:ColumnNullable
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."Id",
	t1."Column",
	t1."ColumnNullable"
FROM
	"StringEnumTable" t1
ORDER BY
	t1."Id"

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DELETE FROM
	"StringEnumTable" t1

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

INSERT INTO "StringEnumTable"
(
	"Id",
	"Column",
	"ColumnNullable"
)
VALUES
(1,'val=1',NULL),
(2,'value=2','value=33')

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."Id",
	t1."Column",
	t1."ColumnNullable"
FROM
	"StringEnumTable" t1
ORDER BY
	t1."Id"

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DELETE FROM
	"StringEnumTable" t1

BeforeExecute
INSERT BULK "StringEnumTable"(Id, Column, ColumnNullable)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."Id",
	t1."Column",
	t1."ColumnNullable"
FROM
	"StringEnumTable" t1
ORDER BY
	t1."Id"

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "StringEnumTable"

