BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "BooleanTable"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "BooleanTable"
		(
			"ColumnNullable" Char(1)     NULL,
			"Column"         Char(1) NOT NULL,
			"Id"             Int     NOT NULL
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

INSERT ALL
	INTO "BooleanTable" ("ColumnNullable", "Column", "Id") VALUES (NULL,1,1)
	INTO "BooleanTable" ("ColumnNullable", "Column", "Id") VALUES (1,0,2)
SELECT * FROM dual

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @Column_1 Int16
SET     @Column_1 = 0
DECLARE @ColumnNullable Int16
SET     @ColumnNullable = 1

SELECT
	r."ColumnNullable",
	r."Column",
	r."Id"
FROM
	"BooleanTable" r
WHERE
	r."Column" = :Column_1 AND r."ColumnNullable" = :ColumnNullable

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	r."ColumnNullable",
	r."Column",
	r."Id"
FROM
	"BooleanTable" r
WHERE
	r."Column" = 0 AND r."ColumnNullable" = 1

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DELETE FROM
	"BooleanTable" t1

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @ColumnNullable Int16
SET     @ColumnNullable = NULL
DECLARE @Column_1 Int16
SET     @Column_1 = 1
DECLARE @Id Int32
SET     @Id = 1

INSERT INTO "BooleanTable"
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
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @ColumnNullable Int16
SET     @ColumnNullable = 1
DECLARE @Column_1 Int16
SET     @Column_1 = 0
DECLARE @Id Int32
SET     @Id = 2

INSERT INTO "BooleanTable"
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
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	t1."ColumnNullable",
	t1."Column",
	t1."Id"
FROM
	"BooleanTable" t1
ORDER BY
	t1."Id"

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DELETE FROM
	"BooleanTable" t1

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

INSERT ALL
	INTO "BooleanTable" ("ColumnNullable", "Column", "Id") VALUES (NULL,1,1)
	INTO "BooleanTable" ("ColumnNullable", "Column", "Id") VALUES (1,0,2)
SELECT * FROM dual

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	t1."ColumnNullable",
	t1."Column",
	t1."Id"
FROM
	"BooleanTable" t1
ORDER BY
	t1."Id"

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DELETE FROM
	"BooleanTable" t1

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

INSERT ALL
	INTO "BooleanTable" ("ColumnNullable", "Column", "Id") VALUES (NULL,1,1)
	INTO "BooleanTable" ("ColumnNullable", "Column", "Id") VALUES (1,0,2)
SELECT * FROM dual

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	t1."ColumnNullable",
	t1."Column",
	t1."Id"
FROM
	"BooleanTable" t1
ORDER BY
	t1."Id"

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "BooleanTable"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

