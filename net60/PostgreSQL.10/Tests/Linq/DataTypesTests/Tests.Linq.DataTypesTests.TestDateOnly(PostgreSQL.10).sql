BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "DateOnlyTable"

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "DateOnlyTable"
(
	"ColumnNullable" Date     NULL,
	"Column"         Date NOT NULL,
	"Id"             Int  NOT NULL
)

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

INSERT INTO "DateOnlyTable"
(
	"ColumnNullable",
	"Column",
	"Id"
)
VALUES
(NULL,'1900-01-01'::date,1),
('2200-01-01'::date,'2020-02-29'::date,2)

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @Column_1 Date
SET     @Column_1 = '2020-02-29'::date
DECLARE @ColumnNullable Date
SET     @ColumnNullable = '2200-01-01'::date

SELECT
	r."ColumnNullable",
	r."Column",
	r."Id"
FROM
	"DateOnlyTable" r
WHERE
	r."Column" = :Column_1 AND r."ColumnNullable" = :ColumnNullable

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

SELECT
	r."ColumnNullable",
	r."Column",
	r."Id"
FROM
	"DateOnlyTable" r
WHERE
	r."Column" = '2020-02-29'::date AND r."ColumnNullable" = '2200-01-01'::date

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

DELETE FROM
	"DateOnlyTable" t1

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @ColumnNullable Date
SET     @ColumnNullable = NULL
DECLARE @Column_1 Date
SET     @Column_1 = '1900-01-01'::date
DECLARE @Id Integer -- Int32
SET     @Id = 1

INSERT INTO "DateOnlyTable"
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
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @ColumnNullable Date
SET     @ColumnNullable = '2200-01-01'::date
DECLARE @Column_1 Date
SET     @Column_1 = '2020-02-29'::date
DECLARE @Id Integer -- Int32
SET     @Id = 2

INSERT INTO "DateOnlyTable"
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
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."ColumnNullable",
	t1."Column",
	t1."Id"
FROM
	"DateOnlyTable" t1
ORDER BY
	t1."Id"

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

DELETE FROM
	"DateOnlyTable" t1

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

INSERT INTO "DateOnlyTable"
(
	"ColumnNullable",
	"Column",
	"Id"
)
VALUES
(NULL,'1900-01-01'::date,1),
('2200-01-01'::date,'2020-02-29'::date,2)

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."ColumnNullable",
	t1."Column",
	t1."Id"
FROM
	"DateOnlyTable" t1
ORDER BY
	t1."Id"

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

DELETE FROM
	"DateOnlyTable" t1

BeforeExecute
INSERT BULK "DateOnlyTable"(ColumnNullable, Column, Id)

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."ColumnNullable",
	t1."Column",
	t1."Id"
FROM
	"DateOnlyTable" t1
ORDER BY
	t1."Id"

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "DateOnlyTable"

