BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Issue3360Table1"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Issue3360Table1"
(
	"Id"    Integer   NOT NULL,
	"Byte"  TinyInt   NOT NULL,
	"ByteN" TinyInt       NULL,
	"Guid"  Char (36) NOT NULL,
	"GuidN" Char (36)     NULL,
	"Enum"  NChar(11) NOT NULL,
	"EnumN" NChar(11)     NULL,
	"Bool"  TinyInt   NOT NULL,
	"BoolN" TinyInt       NULL,

	PRIMARY KEY ("Id")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Byte  -- Byte
SET     @Byte = 0
DECLARE @ByteN  -- Byte
SET     @ByteN = NULL
DECLARE @Guid Char(36) -- AnsiStringFixedLength
SET     @Guid = '00000000-0000-0000-0000-000000000000'
DECLARE @GuidN Char(36) -- AnsiStringFixedLength
SET     @GuidN = NULL
DECLARE @Enum NChar(11) -- StringFixedLength
SET     @Enum = 'ENUM1_VALUE'
DECLARE @EnumN NChar -- StringFixedLength
SET     @EnumN = NULL
DECLARE @Bool  -- Byte
SET     @Bool = 0
DECLARE @BoolN  -- Byte
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
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @Byte  -- Byte
SET     @Byte = 1
DECLARE @ByteN  -- Byte
SET     @ByteN = 2
DECLARE @Guid Char(36) -- AnsiStringFixedLength
SET     @Guid = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'
DECLARE @GuidN Char(36) -- AnsiStringFixedLength
SET     @GuidN = 'a948600d-de21-4f74-8ac2-9516b287076e'
DECLARE @Enum NChar(11) -- StringFixedLength
SET     @Enum = 'ENUM1_VALUE'
DECLARE @EnumN NChar(11) -- StringFixedLength
SET     @EnumN = 'ENUM2_VALUE'
DECLARE @Bool  -- Byte
SET     @Bool = 1
DECLARE @BoolN  -- Byte
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
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 4
DECLARE @Byte  -- Byte
SET     @Byte = 3
DECLARE @ByteN  -- Byte
SET     @ByteN = 4
DECLARE @Guid Char(36) -- AnsiStringFixedLength
SET     @Guid = 'bd3973a5-4323-4dd8-9f4f-df9f93e2a627'
DECLARE @GuidN Char(36) -- AnsiStringFixedLength
SET     @GuidN = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'
DECLARE @Enum NChar(11) -- StringFixedLength
SET     @Enum = 'ENUM1_VALUE'
DECLARE @EnumN NChar(11) -- StringFixedLength
SET     @EnumN = 'ENUM2_VALUE'
DECLARE @Bool  -- Byte
SET     @Bool = 0
DECLARE @BoolN  -- Byte
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
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Id",
	"t1"."Byte",
	"t1"."Byte_1",
	"t1"."Guid",
	"t1"."Guid_1",
	"t1"."c1",
	"t1"."c2",
	"t1"."Bool",
	"t1"."Bool_1"
FROM
	(
		SELECT
			"r"."Id",
			NULL as "Byte",
			NULL as "Byte_1",
			NULL as "Guid",
			NULL as "Guid_1",
			NULL as "c1",
			NULL as "c2",
			NULL as "Bool",
			NULL as "Bool_1"
		FROM
			"Issue3360Table1" "r"
		WHERE
			"r"."Id" = 1
		UNION ALL
		SELECT
			"r_1"."Id",
			"r_1"."Byte",
			"r_1"."ByteN" as "Byte_1",
			"r_1"."Guid",
			"r_1"."GuidN" as "Guid_1",
			"r_1"."Enum" as "c1",
			"r_1"."EnumN" as "c2",
			"r_1"."Bool",
			"r_1"."BoolN" as "Bool_1"
		FROM
			"Issue3360Table1" "r_1"
		WHERE
			"r_1"."Id" = 2
	) "t1"
ORDER BY
	"t1"."Id"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Issue3360Table1"

