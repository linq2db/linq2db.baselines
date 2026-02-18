-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

WITH RECURSIVE cte
(
	"Id",
	"Byte",
	"Byte_1",
	"Guid",
	"Guid_1",
	"Enum",
	"EnumN",
	"Bool",
	"Bool_1"
)
AS
(
	SELECT
		r."Id",
		r."Byte",
		r."Byte",
		r."Guid",
		r."Guid",
		NULL::text,
		NULL::text,
		r."Bool",
		r."Bool"
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
	t1."Byte_1",
	t1."Guid",
	t1."Guid_1",
	t1."Enum",
	t1."EnumN",
	t1."Bool",
	t1."Bool_1"
FROM
	cte t1
ORDER BY
	t1."Id"

