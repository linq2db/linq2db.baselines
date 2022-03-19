BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "StringEnumTable"

BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "StringEnumTable"
(
	"ColumnNullable" text     NULL,
	"Column"         text NOT NULL,
	"Id"             Int  NOT NULL
)

BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

INSERT INTO "StringEnumTable"
(
	"ColumnNullable",
	"Column",
	"Id"
)
VALUES
(NULL,'val=1',1),
('value=33','value=2',2)

BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL
DECLARE @Column_1 Text(7) -- String
SET     @Column_1 = 'value=2'
DECLARE @ColumnNullable Text(8) -- String
SET     @ColumnNullable = 'value=33'

SELECT
	r."ColumnNullable",
	r."Column",
	r."Id"
FROM
	"StringEnumTable" r
WHERE
	r."Column" = :Column_1 AND r."ColumnNullable" = :ColumnNullable

BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

SELECT
	r."ColumnNullable",
	r."Column",
	r."Id"
FROM
	"StringEnumTable" r
WHERE
	r."Column" = 'value=2' AND r."ColumnNullable" = 'value=33'

BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

DELETE FROM
	"StringEnumTable" t1

BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL
DECLARE @ColumnNullable Text -- String
SET     @ColumnNullable = NULL
DECLARE @Column_1 Text(5) -- String
SET     @Column_1 = 'val=1'
DECLARE @Id Integer -- Int32
SET     @Id = 1

INSERT INTO "StringEnumTable"
(
	"ColumnNullable",
	"Column",
	"Id"
)
VALUES
(
	:ColumnNullable,
	:Column_1,
	:Id
)

BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL
DECLARE @ColumnNullable Text(8) -- String
SET     @ColumnNullable = 'value=33'
DECLARE @Column_1 Text(7) -- String
SET     @Column_1 = 'value=2'
DECLARE @Id Integer -- Int32
SET     @Id = 2

INSERT INTO "StringEnumTable"
(
	"ColumnNullable",
	"Column",
	"Id"
)
VALUES
(
	:ColumnNullable,
	:Column_1,
	:Id
)

BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

SELECT
	t1."ColumnNullable",
	t1."Column",
	t1."Id"
FROM
	"StringEnumTable" t1
ORDER BY
	t1."Id"

BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

DELETE FROM
	"StringEnumTable" t1

BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

INSERT INTO "StringEnumTable"
(
	"ColumnNullable",
	"Column",
	"Id"
)
VALUES
(NULL,'val=1',1),
('value=33','value=2',2)

BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

SELECT
	t1."ColumnNullable",
	t1."Column",
	t1."Id"
FROM
	"StringEnumTable" t1
ORDER BY
	t1."Id"

BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

DELETE FROM
	"StringEnumTable" t1

BeforeExecute
INSERT BULK "StringEnumTable"(ColumnNullable, Column, Id)

BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

SELECT
	t1."ColumnNullable",
	t1."Column",
	t1."Id"
FROM
	"StringEnumTable" t1
ORDER BY
	t1."Id"

BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "StringEnumTable"

