-- DB2 DB2.LUW DB2LUW

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
		"r"."Id",
		CAST(5 AS SmallInt),
		CAST(5 AS SmallInt),
		CAST(BX'27FE8A0B1C482E44B8CF729DDFEECE29' AS char(16) for bit data),
		CAST(BX'27FE8A0B1C482E44B8CF729DDFEECE30' AS char(16) for bit data),
		Char('ENUM1_VALUE', 11),
		Char('ENUM2_VALUE', 11),
		CAST(1 AS smallint),
		CAST(0 AS smallint)
	FROM
		"Issue3360Table1" "r"
	WHERE
		"r"."Id" = 2
	UNION ALL
	SELECT
		"r_1"."Id",
		"r_1"."Byte",
		"r_1"."ByteN",
		"r_1"."Guid",
		"r_1"."GuidN",
		"r_1"."Enum",
		"r_1"."EnumN",
		"r_1"."Bool",
		"r_1"."BoolN"
	FROM
		"Issue3360Table1" "r_1",
		"cte" "parent"
	WHERE
		"r_1"."Id" = "parent"."Id" + 2
)
SELECT
	"t1"."Id",
	"t1"."Byte",
	"t1"."ByteN",
	"t1"."Guid",
	"t1"."GuidN",
	"t1"."Enum",
	"t1"."EnumN",
	"t1"."Bool",
	"t1"."BoolN"
FROM
	"cte" "t1"
ORDER BY
	"t1"."Id"

