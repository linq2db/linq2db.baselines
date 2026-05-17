-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @Column_1 Int16
SET     @Column_1 = 255
DECLARE @ColumnNullable Int16
SET     @ColumnNullable = 2

SELECT
	r."Id",
	r."Column",
	r."ColumnNullable"
FROM
	"ByteTable" r
WHERE
	r."Column" = :Column_1 AND r."ColumnNullable" = :ColumnNullable

-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	r."Id",
	r."Column",
	r."ColumnNullable"
FROM
	"ByteTable" r
WHERE
	r."Column" = 255 AND r."ColumnNullable" = 2

-- Oracle.12.Managed Oracle.Managed Oracle12

DELETE FROM
	"ByteTable" t1

-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Column_1 Int16
SET     @Column_1 = 1
DECLARE @ColumnNullable Int16
SET     @ColumnNullable = NULL

INSERT INTO "ByteTable"
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

-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Column_1 Int16
SET     @Column_1 = 255
DECLARE @ColumnNullable Int16
SET     @ColumnNullable = 2

INSERT INTO "ByteTable"
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

-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Column",
	t1."ColumnNullable"
FROM
	"ByteTable" t1
ORDER BY
	t1."Id"

-- Oracle.12.Managed Oracle.Managed Oracle12

DELETE FROM
	"ByteTable" t1

-- Oracle.12.Managed Oracle.Managed Oracle12

INSERT ALL
	INTO "ByteTable" ("Id", "Column", "ColumnNullable") VALUES (1,1,NULL)
	INTO "ByteTable" ("Id", "Column", "ColumnNullable") VALUES (2,255,2)
SELECT * FROM dual

-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Column",
	t1."ColumnNullable"
FROM
	"ByteTable" t1
ORDER BY
	t1."Id"

-- Oracle.12.Managed Oracle.Managed Oracle12

DELETE FROM
	"ByteTable" t1

-- Oracle.12.Managed Oracle.Managed Oracle12

INSERT ALL
	INTO "ByteTable" ("Id", "Column", "ColumnNullable") VALUES (1,1,NULL)
	INTO "ByteTable" ("Id", "Column", "ColumnNullable") VALUES (2,255,2)
SELECT * FROM dual

-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Column",
	t1."ColumnNullable"
FROM
	"ByteTable" t1
ORDER BY
	t1."Id"

