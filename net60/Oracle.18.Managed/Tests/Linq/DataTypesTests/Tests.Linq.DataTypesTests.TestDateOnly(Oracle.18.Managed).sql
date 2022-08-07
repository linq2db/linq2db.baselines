BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "DateOnlyTable"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "DateOnlyTable"
		(
			"ColumnNullable" date     NULL,
			"Column"         date NOT NULL,
			"Id"             Int  NOT NULL
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

INSERT ALL
	INTO "DateOnlyTable" ("ColumnNullable", "Column", "Id") VALUES (NULL,DATE '1950-01-01',1)
	INTO "DateOnlyTable" ("ColumnNullable", "Column", "Id") VALUES (DATE '2200-01-01',DATE '2020-02-29',2)
SELECT * FROM dual

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Column_1 Date
SET     @Column_1 = TIMESTAMP '2020-02-29 00:00:00.000000'
DECLARE @ColumnNullable Date
SET     @ColumnNullable = TIMESTAMP '2200-01-01 00:00:00.000000'

SELECT
	r."ColumnNullable",
	r."Column",
	r."Id"
FROM
	"DateOnlyTable" r
WHERE
	r."Column" = :Column_1 AND r."ColumnNullable" = :ColumnNullable

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	r."ColumnNullable",
	r."Column",
	r."Id"
FROM
	"DateOnlyTable" r
WHERE
	r."Column" = DATE '2020-02-29' AND r."ColumnNullable" = DATE '2200-01-01'

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

DELETE FROM
	"DateOnlyTable" t1

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @ColumnNullable Date
SET     @ColumnNullable = NULL
DECLARE @Column_1 Date
SET     @Column_1 = TIMESTAMP '1950-01-01 00:00:00.000000'
DECLARE @Id Int32
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
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @ColumnNullable Date
SET     @ColumnNullable = TIMESTAMP '2200-01-01 00:00:00.000000'
DECLARE @Column_1 Date
SET     @Column_1 = TIMESTAMP '2020-02-29 00:00:00.000000'
DECLARE @Id Int32
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
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	t1."ColumnNullable",
	t1."Column",
	t1."Id"
FROM
	"DateOnlyTable" t1
ORDER BY
	t1."Id"

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

DELETE FROM
	"DateOnlyTable" t1

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

INSERT ALL
	INTO "DateOnlyTable" ("ColumnNullable", "Column", "Id") VALUES (NULL,DATE '1950-01-01',1)
	INTO "DateOnlyTable" ("ColumnNullable", "Column", "Id") VALUES (DATE '2200-01-01',DATE '2020-02-29',2)
SELECT * FROM dual

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	t1."ColumnNullable",
	t1."Column",
	t1."Id"
FROM
	"DateOnlyTable" t1
ORDER BY
	t1."Id"

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

DELETE FROM
	"DateOnlyTable" t1

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

INSERT ALL
	INTO "DateOnlyTable" ("ColumnNullable", "Column", "Id") VALUES (NULL,DATE '1950-01-01',1)
	INTO "DateOnlyTable" ("ColumnNullable", "Column", "Id") VALUES (DATE '2200-01-01',DATE '2020-02-29',2)
SELECT * FROM dual

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	t1."ColumnNullable",
	t1."Column",
	t1."Id"
FROM
	"DateOnlyTable" t1
ORDER BY
	t1."Id"

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "DateOnlyTable"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

