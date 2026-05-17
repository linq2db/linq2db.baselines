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
		CAST(NULL AS SmallInt),
		CAST(NULL AS SmallInt),
		CAST(NULL AS char(16) for bit data),
		CAST(NULL AS char(16) for bit data),
		CAST(NULL AS NChar(11)),
		CAST(NULL AS NChar(11)),
		CAST(NULL AS smallint),
		CAST(NULL AS smallint)
	FROM
		"Issue3360Table1" "r"
	WHERE
		"r"."Id" = 1
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
		"r_1"."Id" = "parent"."Id" + 1
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

