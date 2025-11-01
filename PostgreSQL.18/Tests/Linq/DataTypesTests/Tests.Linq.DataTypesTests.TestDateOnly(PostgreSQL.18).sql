-- PostgreSQL.18 PostgreSQL
DECLARE @Column Date
SET     @Column = '2020-02-29'::date
DECLARE @ColumnNullable Date
SET     @ColumnNullable = '2020-01-01'::date

SELECT
	r."Id",
	r."Column",
	r."ColumnNullable"
FROM
	"DateOnlyTable" r
WHERE
	r."Column" = :Column AND r."ColumnNullable" = :ColumnNullable

-- PostgreSQL.18 PostgreSQL

SELECT
	r."Id",
	r."Column",
	r."ColumnNullable"
FROM
	"DateOnlyTable" r
WHERE
	r."Column" = '2020-02-29'::date AND r."ColumnNullable" = '2020-01-01'::date

-- PostgreSQL.18 PostgreSQL

DELETE FROM
	"DateOnlyTable" t1

-- PostgreSQL.18 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Column Date
SET     @Column = '1980-01-01'::date
DECLARE @ColumnNullable Date
SET     @ColumnNullable = NULL

INSERT INTO "DateOnlyTable"
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

-- PostgreSQL.18 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Column Date
SET     @Column = '2020-02-29'::date
DECLARE @ColumnNullable Date
SET     @ColumnNullable = '2020-01-01'::date

INSERT INTO "DateOnlyTable"
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

-- PostgreSQL.18 PostgreSQL

SELECT
	t1."Id",
	t1."Column",
	t1."ColumnNullable"
FROM
	"DateOnlyTable" t1
ORDER BY
	t1."Id"

-- PostgreSQL.18 PostgreSQL

DELETE FROM
	"DateOnlyTable" t1

-- PostgreSQL.18 PostgreSQL

INSERT INTO "DateOnlyTable"
(
	"Id",
	"Column",
	"ColumnNullable"
)
VALUES
(1,'1980-01-01'::date,NULL),
(2,'2020-02-29'::date,'2020-01-01'::date)

-- PostgreSQL.18 PostgreSQL

SELECT
	t1."Id",
	t1."Column",
	t1."ColumnNullable"
FROM
	"DateOnlyTable" t1
ORDER BY
	t1."Id"

-- PostgreSQL.18 PostgreSQL

DELETE FROM
	"DateOnlyTable" t1

INSERT BULK "DateOnlyTable"(Id, Column, ColumnNullable)

-- PostgreSQL.18 PostgreSQL

SELECT
	t1."Id",
	t1."Column",
	t1."ColumnNullable"
FROM
	"DateOnlyTable" t1
ORDER BY
	t1."Id"

