BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

DROP TABLE IF EXISTS "IntEnumTable"

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

CREATE TABLE IF NOT EXISTS "IntEnumTable"
(
	"ColumnNullable" Int     NULL,
	"Column"         Int NOT NULL,
	"Id"             Int NOT NULL
)

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

INSERT INTO "IntEnumTable"
(
	"ColumnNullable",
	"Column",
	"Id"
)
VALUES
(NULL,1,1),
(3,2,2)

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @Column_1 Integer -- Int32
SET     @Column_1 = 2
DECLARE @ColumnNullable Integer -- Int32
SET     @ColumnNullable = 3

SELECT
	r."ColumnNullable",
	r."Column",
	r."Id"
FROM
	"IntEnumTable" r
WHERE
	r."Column" = :Column_1 AND r."ColumnNullable" = :ColumnNullable

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT
	r."ColumnNullable",
	r."Column",
	r."Id"
FROM
	"IntEnumTable" r
WHERE
	r."Column" = 2 AND r."ColumnNullable" = 3

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

DELETE FROM
	"IntEnumTable" t1

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @ColumnNullable Integer -- Int32
SET     @ColumnNullable = NULL
DECLARE @Column_1 Integer -- Int32
SET     @Column_1 = 1
DECLARE @Id Integer -- Int32
SET     @Id = 1

INSERT INTO "IntEnumTable"
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
-- PostgreSQL.9.2 PostgreSQL
DECLARE @ColumnNullable Integer -- Int32
SET     @ColumnNullable = 3
DECLARE @Column_1 Integer -- Int32
SET     @Column_1 = 2
DECLARE @Id Integer -- Int32
SET     @Id = 2

INSERT INTO "IntEnumTable"
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
-- PostgreSQL.9.2 PostgreSQL

SELECT
	t1."ColumnNullable",
	t1."Column",
	t1."Id"
FROM
	"IntEnumTable" t1
ORDER BY
	t1."Id"

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

DELETE FROM
	"IntEnumTable" t1

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

INSERT INTO "IntEnumTable"
(
	"ColumnNullable",
	"Column",
	"Id"
)
VALUES
(NULL,1,1),
(3,2,2)

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT
	t1."ColumnNullable",
	t1."Column",
	t1."Id"
FROM
	"IntEnumTable" t1
ORDER BY
	t1."Id"

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

DELETE FROM
	"IntEnumTable" t1

BeforeExecute
INSERT BULK "IntEnumTable"(ColumnNullable, Column, Id)

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT
	t1."ColumnNullable",
	t1."Column",
	t1."Id"
FROM
	"IntEnumTable" t1
ORDER BY
	t1."Id"

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

DROP TABLE IF EXISTS "IntEnumTable"

