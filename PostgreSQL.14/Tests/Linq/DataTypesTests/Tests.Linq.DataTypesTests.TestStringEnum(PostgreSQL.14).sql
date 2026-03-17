-- PostgreSQL.14 PostgreSQL.13 PostgreSQL
DECLARE @Column Text(7) -- String
SET     @Column = 'value=2'
DECLARE @ColumnNullable Text(8) -- String
SET     @ColumnNullable = 'value=33'

SELECT
	r."Id",
	r."Column",
	r."ColumnNullable"
FROM
	"StringEnumTable" r
WHERE
	r."Column" = :Column AND r."ColumnNullable" = :ColumnNullable

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	r."Id",
	r."Column",
	r."ColumnNullable"
FROM
	"StringEnumTable" r
WHERE
	r."Column" = 'value=2' AND r."ColumnNullable" = 'value=33'

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

DELETE FROM
	"StringEnumTable" t1

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Column Text(5) -- String
SET     @Column = 'val=1'
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
	:Column,
	:ColumnNullable
)

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Column Text(7) -- String
SET     @Column = 'value=2'
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
	:Column,
	:ColumnNullable
)

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	t1."Id",
	t1."Column",
	t1."ColumnNullable"
FROM
	"StringEnumTable" t1
ORDER BY
	t1."Id"

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

DELETE FROM
	"StringEnumTable" t1

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

INSERT INTO "StringEnumTable"
(
	"Id",
	"Column",
	"ColumnNullable"
)
VALUES
(1,'val=1',NULL),
(2,'value=2','value=33')

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	t1."Id",
	t1."Column",
	t1."ColumnNullable"
FROM
	"StringEnumTable" t1
ORDER BY
	t1."Id"

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

DELETE FROM
	"StringEnumTable" t1

INSERT BULK "StringEnumTable"(Id, Column, ColumnNullable)

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	t1."Id",
	t1."Column",
	t1."ColumnNullable"
FROM
	"StringEnumTable" t1
ORDER BY
	t1."Id"

