BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue3360Table1"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "Issue3360Table1"
		(
			"Id"    Int         NOT NULL,
			"Byte"  Number(3)   NOT NULL,
			"ByteN" Number(3)       NULL,
			"Guid"  Raw(16)     NOT NULL,
			"GuidN" Raw(16)         NULL,
			"Enum"  VarChar(11) NOT NULL,
			"EnumN" VarChar(11)     NULL,
			"Bool"  Char(1)     NOT NULL,
			"BoolN" Char(1)         NULL,

			CONSTRAINT "PK_Issue3360Table1" PRIMARY KEY ("Id")
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Byte Int16
SET     @Byte = 0
DECLARE @ByteN Int16
SET     @ByteN = NULL
DECLARE @Guid Raw(16) -- Binary
SET     @Guid = HEXTORAW('00000000000000000000000000000000')
DECLARE @GuidN Raw -- Binary
SET     @GuidN = NULL
DECLARE @Enum Varchar2(11) -- String
SET     @Enum = 'ENUM1_VALUE'
DECLARE @EnumN Varchar2 -- String
SET     @EnumN = NULL
DECLARE @Bool Int16
SET     @Bool = 0
DECLARE @BoolN Int16
SET     @BoolN = NULL

INSERT INTO "Issue3360Table1"
(
	"Id",
	"Byte",
	"ByteN",
	"Guid",
	"GuidN",
	"Enum",
	"EnumN",
	"Bool",
	"BoolN"
)
VALUES
(
	:Id,
	:Byte,
	:ByteN,
	:Guid,
	:GuidN,
	:Enum,
	:EnumN,
	:Bool,
	:BoolN
)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Byte Int16
SET     @Byte = 1
DECLARE @ByteN Int16
SET     @ByteN = 2
DECLARE @Guid Raw(16) -- Binary
SET     @Guid = HEXTORAW('3D667BBCDE0F27438F925D8CC3A11D11')
DECLARE @GuidN Raw(16) -- Binary
SET     @GuidN = HEXTORAW('0D6048A921DE744F8AC29516B287076E')
DECLARE @Enum Varchar2(11) -- String
SET     @Enum = 'ENUM1_VALUE'
DECLARE @EnumN Varchar2(11) -- String
SET     @EnumN = 'ENUM2_VALUE'
DECLARE @Bool Int16
SET     @Bool = 1
DECLARE @BoolN Int16
SET     @BoolN = 0

INSERT INTO "Issue3360Table1"
(
	"Id",
	"Byte",
	"ByteN",
	"Guid",
	"GuidN",
	"Enum",
	"EnumN",
	"Bool",
	"BoolN"
)
VALUES
(
	:Id,
	:Byte,
	:ByteN,
	:Guid,
	:GuidN,
	:Enum,
	:EnumN,
	:Bool,
	:BoolN
)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 4
DECLARE @Byte Int16
SET     @Byte = 3
DECLARE @ByteN Int16
SET     @ByteN = 4
DECLARE @Guid Raw(16) -- Binary
SET     @Guid = HEXTORAW('A57339BD2343D84D9F4FDF9F93E2A627')
DECLARE @GuidN Raw(16) -- Binary
SET     @GuidN = HEXTORAW('3D667BBCDE0F27438F925D8CC3A11D11')
DECLARE @Enum Varchar2(11) -- String
SET     @Enum = 'ENUM1_VALUE'
DECLARE @EnumN Varchar2(11) -- String
SET     @EnumN = 'ENUM2_VALUE'
DECLARE @Bool Int16
SET     @Bool = 0
DECLARE @BoolN Int16
SET     @BoolN = 1

INSERT INTO "Issue3360Table1"
(
	"Id",
	"Byte",
	"ByteN",
	"Guid",
	"GuidN",
	"Enum",
	"EnumN",
	"Bool",
	"BoolN"
)
VALUES
(
	:Id,
	:Byte,
	:ByteN,
	:Guid,
	:GuidN,
	:Enum,
	:EnumN,
	:Bool,
	:BoolN
)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Byte",
	t1."Byte_1",
	t1."Guid",
	t1."Guid_1",
	t1."c1",
	t1."c2",
	t1."Bool",
	t1."Bool_1"
FROM
	(
		SELECT
			r."Id",
			NULL as "Byte",
			NULL as "Byte_1",
			NULL as "Guid",
			NULL as "Guid_1",
			NULL as "c1",
			NULL as "c2",
			NULL as "Bool",
			NULL as "Bool_1"
		FROM
			"Issue3360Table1" r
		WHERE
			r."Id" = 1
		UNION ALL
		SELECT
			r_1."Id",
			r_1."Byte",
			r_1."ByteN" as "Byte_1",
			r_1."Guid",
			r_1."GuidN" as "Guid_1",
			r_1."Enum" as "c1",
			r_1."EnumN" as "c2",
			r_1."Bool",
			r_1."BoolN" as "Bool_1"
		FROM
			"Issue3360Table1" r_1
		WHERE
			r_1."Id" = 2
	) t1
ORDER BY
	t1."Id"

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue3360Table1"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

