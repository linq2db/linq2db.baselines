BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

WITH "cte"
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
		CAST(5 AS Number(3)),
		CAST(5 AS Number(3)),
		CAST(HEXTORAW('27FE8A0B1C482E44B8CF729DDFEECE29') AS Raw(16)),
		CAST(HEXTORAW('27FE8A0B1C482E44B8CF729DDFEECE30') AS Raw(16)),
		CAST('ENUM1_VALUE' AS VarChar(11)),
		CAST('ENUM2_VALUE' AS VarChar(11)),
		CAST(1 AS NUMBER(1)),
		CAST(0 AS NUMBER(1))
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
			INNER JOIN "cte" parent ON r_1."Id" = parent."Id" + 2
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
	"cte" t1
ORDER BY
	t1."Id"

