BeforeExecute
-- Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "ByteTable"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "ByteTable"
		(
			"ColumnNullable" Number(3)     NULL,
			"Column"         Number(3) NOT NULL,
			"Id"             Int       NOT NULL
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.Managed Oracle12

INSERT ALL
	INTO "ByteTable" ("ColumnNullable", "Column", "Id") VALUES (NULL,1,1)
	INTO "ByteTable" ("ColumnNullable", "Column", "Id") VALUES (2,255,2)
SELECT * FROM dual

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @Column_1 Int16
SET     @Column_1 = 255
DECLARE @ColumnNullable Int16
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
-- Oracle.Managed Oracle12

SELECT
	r."ColumnNullable",
	r."Column",
	r."Id"
FROM
	"ByteTable" r
WHERE
	r."Column" = 255 AND r."ColumnNullable" = 2

BeforeExecute
-- Oracle.Managed Oracle12

DELETE FROM
	"ByteTable" t1

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @ColumnNullable Int16
SET     @ColumnNullable = NULL
DECLARE @Column_1 Int16
SET     @Column_1 = 1
DECLARE @Id Int32
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
-- Oracle.Managed Oracle12
DECLARE @ColumnNullable Int16
SET     @ColumnNullable = 2
DECLARE @Column_1 Int16
SET     @Column_1 = 255
DECLARE @Id Int32
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
-- Oracle.Managed Oracle12

SELECT
	t1."ColumnNullable",
	t1."Column",
	t1."Id"
FROM
	"ByteTable" t1
ORDER BY
	t1."Id"

BeforeExecute
-- Oracle.Managed Oracle12

DELETE FROM
	"ByteTable" t1

BeforeExecute
-- Oracle.Managed Oracle12

INSERT ALL
	INTO "ByteTable" ("ColumnNullable", "Column", "Id") VALUES (NULL,1,1)
	INTO "ByteTable" ("ColumnNullable", "Column", "Id") VALUES (2,255,2)
SELECT * FROM dual

BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	t1."ColumnNullable",
	t1."Column",
	t1."Id"
FROM
	"ByteTable" t1
ORDER BY
	t1."Id"

BeforeExecute
-- Oracle.Managed Oracle12

DELETE FROM
	"ByteTable" t1

BeforeExecute
-- Oracle.Managed Oracle12

INSERT ALL
	INTO "ByteTable" ("ColumnNullable", "Column", "Id") VALUES (NULL,1,1)
	INTO "ByteTable" ("ColumnNullable", "Column", "Id") VALUES (2,255,2)
SELECT * FROM dual

BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	t1."ColumnNullable",
	t1."Column",
	t1."Id"
FROM
	"ByteTable" t1
ORDER BY
	t1."Id"

BeforeExecute
-- Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "ByteTable"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

