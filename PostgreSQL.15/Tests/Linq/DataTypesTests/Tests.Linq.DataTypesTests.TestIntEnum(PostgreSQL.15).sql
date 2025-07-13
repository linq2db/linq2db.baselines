BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @Column Integer -- Int32
SET     @Column = 2
DECLARE @ColumnNullable Integer -- Int32
SET     @ColumnNullable = 3

SELECT
	r."Id",
	r."Column",
	r."ColumnNullable"
FROM
	"IntEnumTable" r
WHERE
	r."Column" = :Column AND r."ColumnNullable" = :ColumnNullable

BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	r."Id",
	r."Column",
	r."ColumnNullable"
FROM
	"IntEnumTable" r
WHERE
	r."Column" = 2 AND r."ColumnNullable" = 3

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DELETE FROM
	"IntEnumTable" t1

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Column Integer -- Int32
SET     @Column = 1
DECLARE @ColumnNullable Integer -- Int32
SET     @ColumnNullable = NULL

INSERT INTO "IntEnumTable"
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

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Column Integer -- Int32
SET     @Column = 2
DECLARE @ColumnNullable Integer -- Int32
SET     @ColumnNullable = 3

INSERT INTO "IntEnumTable"
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

BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	t1."Id",
	t1."Column",
	t1."ColumnNullable"
FROM
	"IntEnumTable" t1
ORDER BY
	t1."Id"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DELETE FROM
	"IntEnumTable" t1

BeforeExecute
-- PostgreSQL.15 PostgreSQL

INSERT INTO "IntEnumTable"
(
	"Id",
	"Column",
	"ColumnNullable"
)
VALUES
(1,1,NULL),
(2,2,3)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	t1."Id",
	t1."Column",
	t1."ColumnNullable"
FROM
	"IntEnumTable" t1
ORDER BY
	t1."Id"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DELETE FROM
	"IntEnumTable" t1

BeforeExecute
INSERT BULK "IntEnumTable"(Id, Column, ColumnNullable)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	t1."Id",
	t1."Column",
	t1."ColumnNullable"
FROM
	"IntEnumTable" t1
ORDER BY
	t1."Id"

