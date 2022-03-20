BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

DROP TABLE IF EXISTS "ByteTable"

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

CREATE TABLE IF NOT EXISTS "ByteTable"
(
	"ColumnNullable" SmallInt     NULL,
	"Column"         SmallInt NOT NULL,
	"Id"             Int      NOT NULL
)

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

INSERT INTO "ByteTable"
(
	"ColumnNullable",
	"Column",
	"Id"
)
VALUES
(NULL,1,1),
(2,255,2)

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @Column_1 Smallint -- Byte
SET     @Column_1 = 255
DECLARE @ColumnNullable Smallint -- Byte
SET     @ColumnNullable = 2

SELECT
	r."ColumnNullable",
	r."Column",
	r."Id"
FROM
	"ByteTable" r
WHERE
	r."Column" = :Column_1 AND r."ColumnNullable" = :ColumnNullable

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT
	r."ColumnNullable",
	r."Column",
	r."Id"
FROM
	"ByteTable" r
WHERE
	r."Column" = 255 AND r."ColumnNullable" = 2

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

DELETE FROM
	"ByteTable" t1

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @ColumnNullable Smallint -- Byte
SET     @ColumnNullable = NULL
DECLARE @Column_1 Smallint -- Byte
SET     @Column_1 = 1
DECLARE @Id Integer -- Int32
SET     @Id = 1

INSERT INTO "ByteTable"
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
DECLARE @ColumnNullable Smallint -- Byte
SET     @ColumnNullable = 2
DECLARE @Column_1 Smallint -- Byte
SET     @Column_1 = 255
DECLARE @Id Integer -- Int32
SET     @Id = 2

INSERT INTO "ByteTable"
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
	"ByteTable" t1
ORDER BY
	t1."Id"

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

DELETE FROM
	"ByteTable" t1

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

INSERT INTO "ByteTable"
(
	"ColumnNullable",
	"Column",
	"Id"
)
VALUES
(NULL,1,1),
(2,255,2)

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT
	t1."ColumnNullable",
	t1."Column",
	t1."Id"
FROM
	"ByteTable" t1
ORDER BY
	t1."Id"

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

DELETE FROM
	"ByteTable" t1

BeforeExecute
INSERT BULK "ByteTable"(ColumnNullable, Column, Id)

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT
	t1."ColumnNullable",
	t1."Column",
	t1."Id"
FROM
	"ByteTable" t1
ORDER BY
	t1."Id"

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

DROP TABLE IF EXISTS "ByteTable"

