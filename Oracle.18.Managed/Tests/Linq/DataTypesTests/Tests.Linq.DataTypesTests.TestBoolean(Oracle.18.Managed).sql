BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Column_1 Int16
SET     @Column_1 = 0
DECLARE @ColumnNullable Int16
SET     @ColumnNullable = 1

SELECT
	r."Id",
	r."Column",
	r."ColumnNullable"
FROM
	"BooleanTable" r
WHERE
	r."Column" = :Column_1 AND r."ColumnNullable" = :ColumnNullable

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	r."Id",
	r."Column",
	r."ColumnNullable"
FROM
	"BooleanTable" r
WHERE
	r."Column" = 0 AND r."ColumnNullable" = 1

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

DELETE FROM
	"BooleanTable" t1

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Column_1 Int16
SET     @Column_1 = 1
DECLARE @ColumnNullable Int16
SET     @ColumnNullable = NULL

INSERT INTO "BooleanTable"
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
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Column_1 Int16
SET     @Column_1 = 0
DECLARE @ColumnNullable Int16
SET     @ColumnNullable = 1

INSERT INTO "BooleanTable"
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
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Column",
	t1."ColumnNullable"
FROM
	"BooleanTable" t1
ORDER BY
	t1."Id"

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

DELETE FROM
	"BooleanTable" t1

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

INSERT ALL
	INTO "BooleanTable" ("Id", "Column", "ColumnNullable") VALUES (1,1,NULL)
	INTO "BooleanTable" ("Id", "Column", "ColumnNullable") VALUES (2,0,1)
SELECT * FROM dual

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Column",
	t1."ColumnNullable"
FROM
	"BooleanTable" t1
ORDER BY
	t1."Id"

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

DELETE FROM
	"BooleanTable" t1

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

INSERT ALL
	INTO "BooleanTable" ("Id", "Column", "ColumnNullable") VALUES (1,1,NULL)
	INTO "BooleanTable" ("Id", "Column", "ColumnNullable") VALUES (2,0,1)
SELECT * FROM dual

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Column",
	t1."ColumnNullable"
FROM
	"BooleanTable" t1
ORDER BY
	t1."Id"

