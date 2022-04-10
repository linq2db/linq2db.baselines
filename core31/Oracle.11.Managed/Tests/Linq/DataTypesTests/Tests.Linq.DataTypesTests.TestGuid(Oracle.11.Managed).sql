BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "GuidTable"';
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
		CREATE TABLE "GuidTable"
		(
			"ColumnNullable" Raw(16)     NULL,
			"Column"         Raw(16) NOT NULL,
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
	INTO "GuidTable" ("ColumnNullable", "Column", "Id") VALUES (NULL,HEXTORAW('3D667BBCDE0F27438F925D8CC3A11D11'),1)
	INTO "GuidTable" ("ColumnNullable", "Column", "Id") VALUES (HEXTORAW('A57339BD2343D84D9F4FDF9F93E2A627'),HEXTORAW('0D6048A921DE744F8AC29516B287076E'),2)
SELECT * FROM dual

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @Column_1 Raw(16) -- Binary
SET     @Column_1 = HEXTORAW('0D6048A921DE744F8AC29516B287076E')
DECLARE @ColumnNullable Raw(16) -- Binary
SET     @ColumnNullable = HEXTORAW('A57339BD2343D84D9F4FDF9F93E2A627')

SELECT
	r."ColumnNullable",
	r."Column",
	r."Id"
FROM
	"GuidTable" r
WHERE
	r."Column" = :Column_1 AND r."ColumnNullable" = :ColumnNullable

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	r."ColumnNullable",
	r."Column",
	r."Id"
FROM
	"GuidTable" r
WHERE
	r."Column" = HEXTORAW('0D6048A921DE744F8AC29516B287076E') AND
	r."ColumnNullable" = HEXTORAW('A57339BD2343D84D9F4FDF9F93E2A627')

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DELETE FROM
	"GuidTable" t1

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @ColumnNullable Raw -- Binary
SET     @ColumnNullable = NULL
DECLARE @Column_1 Raw(16) -- Binary
SET     @Column_1 = HEXTORAW('3D667BBCDE0F27438F925D8CC3A11D11')
DECLARE @Id Int32
SET     @Id = 1

INSERT INTO "GuidTable"
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
DECLARE @ColumnNullable Raw(16) -- Binary
SET     @ColumnNullable = HEXTORAW('A57339BD2343D84D9F4FDF9F93E2A627')
DECLARE @Column_1 Raw(16) -- Binary
SET     @Column_1 = HEXTORAW('0D6048A921DE744F8AC29516B287076E')
DECLARE @Id Int32
SET     @Id = 2

INSERT INTO "GuidTable"
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
	"GuidTable" t1
ORDER BY
	t1."Id"

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DELETE FROM
	"GuidTable" t1

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

INSERT ALL
	INTO "GuidTable" ("ColumnNullable", "Column", "Id") VALUES (NULL,HEXTORAW('3D667BBCDE0F27438F925D8CC3A11D11'),1)
	INTO "GuidTable" ("ColumnNullable", "Column", "Id") VALUES (HEXTORAW('A57339BD2343D84D9F4FDF9F93E2A627'),HEXTORAW('0D6048A921DE744F8AC29516B287076E'),2)
SELECT * FROM dual

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	t1."ColumnNullable",
	t1."Column",
	t1."Id"
FROM
	"GuidTable" t1
ORDER BY
	t1."Id"

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DELETE FROM
	"GuidTable" t1

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

INSERT ALL
	INTO "GuidTable" ("ColumnNullable", "Column", "Id") VALUES (NULL,HEXTORAW('3D667BBCDE0F27438F925D8CC3A11D11'),1)
	INTO "GuidTable" ("ColumnNullable", "Column", "Id") VALUES (HEXTORAW('A57339BD2343D84D9F4FDF9F93E2A627'),HEXTORAW('0D6048A921DE744F8AC29516B287076E'),2)
SELECT * FROM dual

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	t1."ColumnNullable",
	t1."Column",
	t1."Id"
FROM
	"GuidTable" t1
ORDER BY
	t1."Id"

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "GuidTable"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

