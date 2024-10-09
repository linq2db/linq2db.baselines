BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Issue3360Table1"

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

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
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

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
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."Id",
	t1."Byte",
	t1."Byte_1",
	t1."Guid",
	t1."Guid_1",
	t1.c1,
	t1.c2,
	t1."Bool",
	t1."Bool_1"
FROM
	(
		SELECT
			r."Id",
			r."Byte",
			r."Byte" as "Byte_1",
			r."Guid",
			r."Guid" as "Guid_1",
			NULL::text as c1,
			NULL::text as c2,
			r."Bool",
			r."Bool" as "Bool_1"
		FROM
			"Issue3360Table1" r
		WHERE
			r."Id" = 2
		UNION ALL
		SELECT
			r_1."Id",
			r_1."Byte",
			r_1."ByteN" as "Byte_1",
			r_1."Guid",
			r_1."GuidN" as "Guid_1",
			r_1."Enum" as c1,
			r_1."EnumN" as c2,
			r_1."Bool",
			r_1."BoolN" as "Bool_1"
		FROM
			"Issue3360Table1" r_1
		WHERE
			r_1."Id" = 4
	) t1
ORDER BY
	t1."Id"

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Issue3360Table1"

