-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @Column Boolean
SET     @Column = False
DECLARE @ColumnNullable Boolean
SET     @ColumnNullable = True

SELECT
	r."Id",
	r."Column",
	r."ColumnNullable"
FROM
	"BooleanTable" r
WHERE
	r."Column" = :Column AND r."ColumnNullable" = :ColumnNullable

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	r."Id",
	r."Column",
	r."ColumnNullable"
FROM
	"BooleanTable" r
WHERE
	r."Column" = False AND r."ColumnNullable" = True

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DELETE FROM
	"BooleanTable" t1

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Column Boolean
SET     @Column = True
DECLARE @ColumnNullable Boolean
SET     @ColumnNullable = NULL

INSERT INTO "BooleanTable"
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

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Column Boolean
SET     @Column = False
DECLARE @ColumnNullable Boolean
SET     @ColumnNullable = True

INSERT INTO "BooleanTable"
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

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	t1."Id",
	t1."Column",
	t1."ColumnNullable"
FROM
	"BooleanTable" t1
ORDER BY
	t1."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DELETE FROM
	"BooleanTable" t1

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

INSERT INTO "BooleanTable"
(
	"Id",
	"Column",
	"ColumnNullable"
)
VALUES
(1,True,NULL),
(2,False,True)

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	t1."Id",
	t1."Column",
	t1."ColumnNullable"
FROM
	"BooleanTable" t1
ORDER BY
	t1."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DELETE FROM
	"BooleanTable" t1

INSERT BULK "BooleanTable"(Id, Column, ColumnNullable)

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	t1."Id",
	t1."Column",
	t1."ColumnNullable"
FROM
	"BooleanTable" t1
ORDER BY
	t1."Id"

