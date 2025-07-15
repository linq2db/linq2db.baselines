BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Column_1 Varchar2(7) -- String
SET     @Column_1 = 'value=2'
DECLARE @ColumnNullable Varchar2(8) -- String
SET     @ColumnNullable = 'value=33'

SELECT
	r."Id",
	r."Column",
	r."ColumnNullable"
FROM
	"StringEnumTable" r
WHERE
	r."Column" = :Column_1 AND r."ColumnNullable" = :ColumnNullable

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	r."Id",
	r."Column",
	r."ColumnNullable"
FROM
	"StringEnumTable" r
WHERE
	r."Column" = 'value=2' AND r."ColumnNullable" = 'value=33'

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

DELETE FROM
	"StringEnumTable" t1

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Column_1 Varchar2(5) -- String
SET     @Column_1 = 'val=1'
DECLARE @ColumnNullable Varchar2 -- String
SET     @ColumnNullable = NULL

INSERT INTO "StringEnumTable"
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
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Column_1 Varchar2(7) -- String
SET     @Column_1 = 'value=2'
DECLARE @ColumnNullable Varchar2(8) -- String
SET     @ColumnNullable = 'value=33'

INSERT INTO "StringEnumTable"
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
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Column",
	t1."ColumnNullable"
FROM
	"StringEnumTable" t1
ORDER BY
	t1."Id"

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

DELETE FROM
	"StringEnumTable" t1

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

INSERT ALL
	INTO "StringEnumTable" ("Id", "Column", "ColumnNullable") VALUES (1,'val=1',NULL)
	INTO "StringEnumTable" ("Id", "Column", "ColumnNullable") VALUES (2,'value=2','value=33')
SELECT * FROM dual

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Column",
	t1."ColumnNullable"
FROM
	"StringEnumTable" t1
ORDER BY
	t1."Id"

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

DELETE FROM
	"StringEnumTable" t1

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

INSERT ALL
	INTO "StringEnumTable" ("Id", "Column", "ColumnNullable") VALUES (1,'val=1',NULL)
	INTO "StringEnumTable" ("Id", "Column", "ColumnNullable") VALUES (2,'value=2','value=33')
SELECT * FROM dual

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Column",
	t1."ColumnNullable"
FROM
	"StringEnumTable" t1
ORDER BY
	t1."Id"

