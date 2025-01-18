BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

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

