BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "IntEnumTable"';
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
		CREATE TABLE "IntEnumTable"
		(
			"ColumnNullable" Int     NULL,
			"Column"         Int NOT NULL,
			"Id"             Int NOT NULL
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
	INTO "IntEnumTable" ("ColumnNullable", "Column", "Id") VALUES (NULL,1,1)
	INTO "IntEnumTable" ("ColumnNullable", "Column", "Id") VALUES (3,2,2)
SELECT * FROM dual

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @Column_1 Int32
SET     @Column_1 = 2
DECLARE @ColumnNullable Int32
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
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	r."ColumnNullable",
	r."Column",
	r."Id"
FROM
	"IntEnumTable" r
WHERE
	r."Column" = 2 AND r."ColumnNullable" = 3

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DELETE FROM
	"IntEnumTable" t1

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @ColumnNullable Int32
SET     @ColumnNullable = NULL
DECLARE @Column_1 Int32
SET     @Column_1 = 1
DECLARE @Id Int32
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
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @ColumnNullable Int32
SET     @ColumnNullable = 3
DECLARE @Column_1 Int32
SET     @Column_1 = 2
DECLARE @Id Int32
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
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	t1."ColumnNullable",
	t1."Column",
	t1."Id"
FROM
	"IntEnumTable" t1
ORDER BY
	t1."Id"

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DELETE FROM
	"IntEnumTable" t1

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

INSERT ALL
	INTO "IntEnumTable" ("ColumnNullable", "Column", "Id") VALUES (NULL,1,1)
	INTO "IntEnumTable" ("ColumnNullable", "Column", "Id") VALUES (3,2,2)
SELECT * FROM dual

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	t1."ColumnNullable",
	t1."Column",
	t1."Id"
FROM
	"IntEnumTable" t1
ORDER BY
	t1."Id"

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DELETE FROM
	"IntEnumTable" t1

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

INSERT ALL
	INTO "IntEnumTable" ("ColumnNullable", "Column", "Id") VALUES (NULL,1,1)
	INTO "IntEnumTable" ("ColumnNullable", "Column", "Id") VALUES (3,2,2)
SELECT * FROM dual

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	t1."ColumnNullable",
	t1."Column",
	t1."Id"
FROM
	"IntEnumTable" t1
ORDER BY
	t1."Id"

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "IntEnumTable"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

