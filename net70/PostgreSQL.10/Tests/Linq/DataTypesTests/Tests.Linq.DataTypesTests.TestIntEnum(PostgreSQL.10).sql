BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "IntEnumTable"

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "IntEnumTable"
(
	"Id"             Int NOT NULL,
	"Column"         Int NOT NULL,
	"ColumnNullable" Int     NULL
)

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

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
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @Column_1 Integer -- Int32
SET     @Column_1 = 2
DECLARE @ColumnNullable Integer -- Int32
SET     @ColumnNullable = 3

SELECT
	r."Id",
	r."Column",
	r."ColumnNullable"
FROM
	"IntEnumTable" r
WHERE
	r."Column" = :Column_1 AND r."ColumnNullable" = :ColumnNullable

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

SELECT
	r."Id",
	r."Column",
	r."ColumnNullable"
FROM
	"IntEnumTable" r
WHERE
	r."Column" = 2 AND r."ColumnNullable" = 3

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

DELETE FROM
	"IntEnumTable" t1

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Column_1 Integer -- Int32
SET     @Column_1 = 1
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
	:Column_1,
	:ColumnNullable
)

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Column_1 Integer -- Int32
SET     @Column_1 = 2
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
	:Column_1,
	:ColumnNullable
)

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."Id",
	t1."Column",
	t1."ColumnNullable"
FROM
	"IntEnumTable" t1
ORDER BY
	t1."Id"

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

DELETE FROM
	"IntEnumTable" t1

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

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
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."Id",
	t1."Column",
	t1."ColumnNullable"
FROM
	"IntEnumTable" t1
ORDER BY
	t1."Id"

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

DELETE FROM
	"IntEnumTable" t1

BeforeExecute
INSERT BULK "IntEnumTable"(Id, Column, ColumnNullable)

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."Id",
	t1."Column",
	t1."ColumnNullable"
FROM
	"IntEnumTable" t1
ORDER BY
	t1."Id"

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "IntEnumTable"

