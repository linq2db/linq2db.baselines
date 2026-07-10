-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
DECLARE @Column Smallint -- Byte
SET     @Column = 255
DECLARE @ColumnNullable Smallint -- Byte
SET     @ColumnNullable = 2

SELECT
	r."Id",
	r."Column",
	r."ColumnNullable"
FROM
	"ByteTable" r
WHERE
	r."Column" = :Column AND r."ColumnNullable" = :ColumnNullable

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12

SELECT
	r."Id",
	r."Column",
	r."ColumnNullable"
FROM
	"ByteTable" r
WHERE
	r."Column" = 255 AND r."ColumnNullable" = 2

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12

DELETE FROM
	"ByteTable" t1

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Column Smallint -- Byte
SET     @Column = 1
DECLARE @ColumnNullable Smallint -- Byte
SET     @ColumnNullable = NULL

INSERT INTO "ByteTable"
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

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Column Smallint -- Byte
SET     @Column = 255
DECLARE @ColumnNullable Smallint -- Byte
SET     @ColumnNullable = 2

INSERT INTO "ByteTable"
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

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12

SELECT
	t1."Id",
	t1."Column",
	t1."ColumnNullable"
FROM
	"ByteTable" t1
ORDER BY
	t1."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12

DELETE FROM
	"ByteTable" t1

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12

INSERT INTO "ByteTable"
(
	"Id",
	"Column",
	"ColumnNullable"
)
VALUES
(1,1,NULL),
(2,255,2)

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12

SELECT
	t1."Id",
	t1."Column",
	t1."ColumnNullable"
FROM
	"ByteTable" t1
ORDER BY
	t1."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12

DELETE FROM
	"ByteTable" t1

INSERT BULK "ByteTable"(Id, Column, ColumnNullable)

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12

SELECT
	t1."Id",
	t1."Column",
	t1."ColumnNullable"
FROM
	"ByteTable" t1
ORDER BY
	t1."Id"

