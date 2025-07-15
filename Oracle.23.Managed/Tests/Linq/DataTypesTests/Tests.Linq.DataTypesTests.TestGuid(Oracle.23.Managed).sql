BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @Column_1 Raw(16) -- Binary
SET     @Column_1 = HEXTORAW('0D6048A921DE744F8AC29516B287076E')
DECLARE @ColumnNullable Raw(16) -- Binary
SET     @ColumnNullable = HEXTORAW('A57339BD2343D84D9F4FDF9F93E2A627')

SELECT
	r."Id",
	r."Column",
	r."ColumnNullable"
FROM
	"GuidTable" r
WHERE
	r."Column" = :Column_1 AND r."ColumnNullable" = :ColumnNullable

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	r."Id",
	r."Column",
	r."ColumnNullable"
FROM
	"GuidTable" r
WHERE
	r."Column" = HEXTORAW('0D6048A921DE744F8AC29516B287076E') AND
	r."ColumnNullable" = HEXTORAW('A57339BD2343D84D9F4FDF9F93E2A627')

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

DELETE FROM
	"GuidTable" t1

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Column_1 Raw(16) -- Binary
SET     @Column_1 = HEXTORAW('3D667BBCDE0F27438F925D8CC3A11D11')
DECLARE @ColumnNullable Raw -- Binary
SET     @ColumnNullable = NULL

INSERT INTO "GuidTable"
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
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Column_1 Raw(16) -- Binary
SET     @Column_1 = HEXTORAW('0D6048A921DE744F8AC29516B287076E')
DECLARE @ColumnNullable Raw(16) -- Binary
SET     @ColumnNullable = HEXTORAW('A57339BD2343D84D9F4FDF9F93E2A627')

INSERT INTO "GuidTable"
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
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Column",
	t1."ColumnNullable"
FROM
	"GuidTable" t1
ORDER BY
	t1."Id"

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

DELETE FROM
	"GuidTable" t1

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

INSERT ALL
	INTO "GuidTable" ("Id", "Column", "ColumnNullable") VALUES (1,HEXTORAW('3D667BBCDE0F27438F925D8CC3A11D11'),NULL)
	INTO "GuidTable" ("Id", "Column", "ColumnNullable") VALUES (2,HEXTORAW('0D6048A921DE744F8AC29516B287076E'),HEXTORAW('A57339BD2343D84D9F4FDF9F93E2A627'))
SELECT * FROM dual

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Column",
	t1."ColumnNullable"
FROM
	"GuidTable" t1
ORDER BY
	t1."Id"

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

DELETE FROM
	"GuidTable" t1

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

INSERT ALL
	INTO "GuidTable" ("Id", "Column", "ColumnNullable") VALUES (1,HEXTORAW('3D667BBCDE0F27438F925D8CC3A11D11'),NULL)
	INTO "GuidTable" ("Id", "Column", "ColumnNullable") VALUES (2,HEXTORAW('0D6048A921DE744F8AC29516B287076E'),HEXTORAW('A57339BD2343D84D9F4FDF9F93E2A627'))
SELECT * FROM dual

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Column",
	t1."ColumnNullable"
FROM
	"GuidTable" t1
ORDER BY
	t1."Id"

