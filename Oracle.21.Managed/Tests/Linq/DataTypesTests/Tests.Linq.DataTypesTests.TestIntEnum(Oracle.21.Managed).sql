BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Column_1 Int32
SET     @Column_1 = 2
DECLARE @ColumnNullable Int32
SET     @ColumnNullable = 3

SELECT
	r."Id",
	r."Column",
	r."ColumnNullable"
FROM
	"IntEnumTable" r
WHERE
	r."Column" = :Column_1 AND r."ColumnNullable" = :ColumnNullable

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	r."Id",
	r."Column",
	r."ColumnNullable"
FROM
	"IntEnumTable" r
WHERE
	r."Column" = 2 AND r."ColumnNullable" = 3

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

DELETE FROM
	"IntEnumTable" t1

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Column_1 Int32
SET     @Column_1 = 1
DECLARE @ColumnNullable Int32
SET     @ColumnNullable = NULL

INSERT INTO "IntEnumTable"
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
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Column_1 Int32
SET     @Column_1 = 2
DECLARE @ColumnNullable Int32
SET     @ColumnNullable = 3

INSERT INTO "IntEnumTable"
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
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Column",
	t1."ColumnNullable"
FROM
	"IntEnumTable" t1
ORDER BY
	t1."Id"

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

DELETE FROM
	"IntEnumTable" t1

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

INSERT ALL
	INTO "IntEnumTable" ("Id", "Column", "ColumnNullable") VALUES (1,1,NULL)
	INTO "IntEnumTable" ("Id", "Column", "ColumnNullable") VALUES (2,2,3)
SELECT * FROM dual

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Column",
	t1."ColumnNullable"
FROM
	"IntEnumTable" t1
ORDER BY
	t1."Id"

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

DELETE FROM
	"IntEnumTable" t1

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

INSERT ALL
	INTO "IntEnumTable" ("Id", "Column", "ColumnNullable") VALUES (1,1,NULL)
	INTO "IntEnumTable" ("Id", "Column", "ColumnNullable") VALUES (2,2,3)
SELECT * FROM dual

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Column",
	t1."ColumnNullable"
FROM
	"IntEnumTable" t1
ORDER BY
	t1."Id"

