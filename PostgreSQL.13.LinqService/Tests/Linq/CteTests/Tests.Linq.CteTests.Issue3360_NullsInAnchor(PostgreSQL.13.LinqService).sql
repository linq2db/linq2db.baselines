﻿BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Issue3360Table1"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue3360Table1"
(
	"Id"    Int      NOT NULL,
	"Byte"  SmallInt NOT NULL,
	"ByteN" SmallInt     NULL,
	"Guid"  uuid     NOT NULL,
	"GuidN" uuid         NULL,
	"Enum"  text     NOT NULL,
	"EnumN" text         NULL,
	"Bool"  Boolean  NOT NULL,
	"BoolN" Boolean      NULL,

	CONSTRAINT "PK_Issue3360Table1" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Byte Smallint -- Int16
SET     @Byte = 0
DECLARE @ByteN Smallint -- Int16
SET     @ByteN = NULL
DECLARE @Guid Uuid -- Guid
SET     @Guid = '00000000-0000-0000-0000-000000000000'::uuid
DECLARE @GuidN Uuid -- Guid
SET     @GuidN = NULL
DECLARE @Enum Text(11) -- String
SET     @Enum = 'ENUM1_VALUE'
DECLARE @EnumN Text -- String
SET     @EnumN = NULL
DECLARE @Bool Boolean
SET     @Bool = False
DECLARE @BoolN Boolean
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
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Byte Smallint -- Int16
SET     @Byte = 1
DECLARE @ByteN Smallint -- Int16
SET     @ByteN = 2
DECLARE @Guid Uuid -- Guid
SET     @Guid = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'::uuid
DECLARE @GuidN Uuid -- Guid
SET     @GuidN = 'a948600d-de21-4f74-8ac2-9516b287076e'::uuid
DECLARE @Enum Text(11) -- String
SET     @Enum = 'ENUM1_VALUE'
DECLARE @EnumN Text(11) -- String
SET     @EnumN = 'ENUM2_VALUE'
DECLARE @Bool Boolean
SET     @Bool = True
DECLARE @BoolN Boolean
SET     @BoolN = False

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
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 4
DECLARE @Byte Smallint -- Int16
SET     @Byte = 3
DECLARE @ByteN Smallint -- Int16
SET     @ByteN = 4
DECLARE @Guid Uuid -- Guid
SET     @Guid = 'bd3973a5-4323-4dd8-9f4f-df9f93e2a627'::uuid
DECLARE @GuidN Uuid -- Guid
SET     @GuidN = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'::uuid
DECLARE @Enum Text(11) -- String
SET     @Enum = 'ENUM1_VALUE'
DECLARE @EnumN Text(11) -- String
SET     @EnumN = 'ENUM2_VALUE'
DECLARE @Bool Boolean
SET     @Bool = False
DECLARE @BoolN Boolean
SET     @BoolN = True

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
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

WITH RECURSIVE cte
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
AS
(
	SELECT
		r."Id",
		NULL::SmallInt,
		NULL::SmallInt,
		NULL::uuid,
		NULL::uuid,
		NULL::text,
		NULL::text,
		NULL::Boolean,
		NULL::Boolean
	FROM
		"Issue3360Table1" r
	WHERE
		r."Id" = 1
	UNION ALL
	SELECT
		r_1."Id",
		r_1."Byte",
		r_1."ByteN",
		r_1."Guid",
		r_1."GuidN",
		r_1."Enum",
		r_1."EnumN",
		r_1."Bool",
		r_1."BoolN"
	FROM
		"Issue3360Table1" r_1
			INNER JOIN cte parent ON r_1."Id" = parent."Id" + 1
)
SELECT
	t1."Id",
	t1."Byte",
	t1."ByteN",
	t1."Guid",
	t1."GuidN",
	t1."Enum",
	t1."EnumN",
	t1."Bool",
	t1."BoolN"
FROM
	cte t1
ORDER BY
	t1."Id"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Issue3360Table1"

