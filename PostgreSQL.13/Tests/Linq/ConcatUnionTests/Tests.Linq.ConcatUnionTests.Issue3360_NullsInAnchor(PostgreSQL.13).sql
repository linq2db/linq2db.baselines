BeforeExecute
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
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."Id",
	t1.c1,
	t1.c2,
	t1.c3,
	t1.c4,
	t1.c5,
	t1.c6,
	t1.c7,
	t1.c8
FROM
	(
		SELECT
			r."Id",
			NULL::SmallInt as c1,
			NULL::SmallInt as c2,
			NULL::uuid as c3,
			NULL::uuid as c4,
			NULL::text as c5,
			NULL::text as c6,
			NULL::Boolean as c7,
			NULL::Boolean as c8
		FROM
			"Issue3360Table1" r
		WHERE
			r."Id" = 1
		UNION ALL
		SELECT
			r_1."Id",
			r_1."Byte" as c1,
			r_1."ByteN" as c2,
			r_1."Guid" as c3,
			r_1."GuidN" as c4,
			r_1."Enum" as c5,
			r_1."EnumN" as c6,
			r_1."Bool" as c7,
			r_1."BoolN" as c8
		FROM
			"Issue3360Table1" r_1
		WHERE
			r_1."Id" = 2
	) t1
ORDER BY
	t1."Id"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Issue3360Table1"

