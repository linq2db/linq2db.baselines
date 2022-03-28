BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "StringEnumTable"';
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
		CREATE TABLE "StringEnumTable"
		(
			"ColumnNullable" VarChar(8)     NULL,
			"Column"         VarChar(8) NOT NULL,
			"Id"             Int        NOT NULL
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
	INTO "StringEnumTable" ("ColumnNullable", "Column", "Id") VALUES (NULL,'val=1',1)
	INTO "StringEnumTable" ("ColumnNullable", "Column", "Id") VALUES ('value=33','value=2',2)
SELECT * FROM dual

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @Column_1 Varchar2(7) -- String
SET     @Column_1 = 'value=2'
DECLARE @ColumnNullable Varchar2(8) -- String
SET     @ColumnNullable = 'value=33'

SELECT
	r."ColumnNullable",
	r."Column",
	r."Id"
FROM
	"StringEnumTable" r
WHERE
	r."Column" = :Column_1 AND r."ColumnNullable" = :ColumnNullable

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	r."ColumnNullable",
	r."Column",
	r."Id"
FROM
	"StringEnumTable" r
WHERE
	r."Column" = 'value=2' AND r."ColumnNullable" = 'value=33'

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DELETE FROM
	"StringEnumTable" t1

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @ColumnNullable Varchar2 -- String
SET     @ColumnNullable = NULL
DECLARE @Column_1 Varchar2(5) -- String
SET     @Column_1 = 'val=1'
DECLARE @Id Int32
SET     @Id = 1

INSERT INTO "StringEnumTable"
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
DECLARE @ColumnNullable Varchar2(8) -- String
SET     @ColumnNullable = 'value=33'
DECLARE @Column_1 Varchar2(7) -- String
SET     @Column_1 = 'value=2'
DECLARE @Id Int32
SET     @Id = 2

INSERT INTO "StringEnumTable"
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
	"StringEnumTable" t1
ORDER BY
	t1."Id"

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DELETE FROM
	"StringEnumTable" t1

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

INSERT ALL
	INTO "StringEnumTable" ("ColumnNullable", "Column", "Id") VALUES (NULL,'val=1',1)
	INTO "StringEnumTable" ("ColumnNullable", "Column", "Id") VALUES ('value=33','value=2',2)
SELECT * FROM dual

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	t1."ColumnNullable",
	t1."Column",
	t1."Id"
FROM
	"StringEnumTable" t1
ORDER BY
	t1."Id"

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DELETE FROM
	"StringEnumTable" t1

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

INSERT ALL
	INTO "StringEnumTable" ("ColumnNullable", "Column", "Id") VALUES (NULL,'val=1',1)
	INTO "StringEnumTable" ("ColumnNullable", "Column", "Id") VALUES ('value=33','value=2',2)
SELECT * FROM dual

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	t1."ColumnNullable",
	t1."Column",
	t1."Id"
FROM
	"StringEnumTable" t1
ORDER BY
	t1."Id"

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "StringEnumTable"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

