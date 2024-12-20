﻿BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue3360Table1"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

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
-- PostgreSQL.15 PostgreSQL

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
(1,0,NULL,'00000000-0000-0000-0000-000000000000'::uuid,NULL,'ENUM1_VALUE',NULL,False,NULL),
(2,1,2,'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'::uuid,'a948600d-de21-4f74-8ac2-9516b287076e'::uuid,'ENUM1_VALUE','ENUM2_VALUE',True,False),
(4,3,4,'bd3973a5-4323-4dd8-9f4f-df9f93e2a627'::uuid,'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'::uuid,'ENUM1_VALUE','ENUM2_VALUE',False,True)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

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
		5::SmallInt,
		5::SmallInt,
		'0b8afe27-481c-442e-b8cf-729ddfeece29'::uuid::uuid,
		'0b8afe27-481c-442e-b8cf-729ddfeece30'::uuid::uuid,
		'ENUM1_VALUE'::text,
		'ENUM2_VALUE'::text,
		True::Boolean,
		False::Boolean
	FROM
		"Issue3360Table1" r
	WHERE
		r."Id" = 2
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
			INNER JOIN cte parent ON r_1."Id" = parent."Id" + 2
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
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue3360Table1"

