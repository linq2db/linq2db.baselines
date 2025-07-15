BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @Column_1 Date
SET     @Column_1 = TIMESTAMP '2020-02-29 00:00:00.000000'
DECLARE @ColumnNullable Date
SET     @ColumnNullable = TIMESTAMP '2200-01-01 00:00:00.000000'

SELECT
	r."Id",
	r."Column",
	r."ColumnNullable"
FROM
	"DateOnlyTable" r
WHERE
	r."Column" = :Column_1 AND r."ColumnNullable" = :ColumnNullable

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	r."Id",
	r."Column",
	r."ColumnNullable"
FROM
	"DateOnlyTable" r
WHERE
	r."Column" = DATE '2020-02-29' AND r."ColumnNullable" = DATE '2200-01-01'

BeforeExecute
-- Oracle.11.Managed Oracle11

DELETE FROM
	"DateOnlyTable" t1

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Column_1 Date
SET     @Column_1 = TIMESTAMP '1950-01-01 00:00:00.000000'
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
	:Column_1,
	:ColumnNullable
)

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Column_1 Date
SET     @Column_1 = TIMESTAMP '2020-02-29 00:00:00.000000'
DECLARE @ColumnNullable Date
SET     @ColumnNullable = TIMESTAMP '2200-01-01 00:00:00.000000'

INSERT INTO "DateOnlyTable"
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
-- Oracle.11.Managed Oracle11

SELECT
	t1."Id",
	t1."Column",
	t1."ColumnNullable"
FROM
	"DateOnlyTable" t1
ORDER BY
	t1."Id"

BeforeExecute
-- Oracle.11.Managed Oracle11

DELETE FROM
	"DateOnlyTable" t1

BeforeExecute
-- Oracle.11.Managed Oracle11

INSERT ALL
	INTO "DateOnlyTable" ("Id", "Column", "ColumnNullable") VALUES (1,DATE '1950-01-01',NULL)
	INTO "DateOnlyTable" ("Id", "Column", "ColumnNullable") VALUES (2,DATE '2020-02-29',DATE '2200-01-01')
SELECT * FROM dual

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	t1."Id",
	t1."Column",
	t1."ColumnNullable"
FROM
	"DateOnlyTable" t1
ORDER BY
	t1."Id"

BeforeExecute
-- Oracle.11.Managed Oracle11

DELETE FROM
	"DateOnlyTable" t1

BeforeExecute
-- Oracle.11.Managed Oracle11

INSERT ALL
	INTO "DateOnlyTable" ("Id", "Column", "ColumnNullable") VALUES (1,DATE '1950-01-01',NULL)
	INTO "DateOnlyTable" ("Id", "Column", "ColumnNullable") VALUES (2,DATE '2020-02-29',DATE '2200-01-01')
SELECT * FROM dual

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	t1."Id",
	t1."Column",
	t1."ColumnNullable"
FROM
	"DateOnlyTable" t1
ORDER BY
	t1."Id"

