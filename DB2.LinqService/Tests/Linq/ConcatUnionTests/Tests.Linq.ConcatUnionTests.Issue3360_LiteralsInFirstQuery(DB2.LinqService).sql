﻿BeforeExecute
--  DB2 DB2.LUW DB2LUW

SELECT
	"t1"."Id",
	"t1"."Byte",
	"t1"."Byte_1",
	"t1"."Guid",
	"t1"."GuidN",
	"t1"."Enum",
	"t1"."EnumN",
	"t1"."Bool",
	"t1"."BoolN"
FROM
	(
		SELECT
			"r"."Id",
			CAST(5 AS SmallInt) as "Byte",
			CAST(5 AS SmallInt) as "Byte_1",
			CAST(BX'27FE8A0B1C482E44B8CF729DDFEECE29' AS char(16) for bit data) as "Guid",
			CAST(BX'27FE8A0B1C482E44B8CF729DDFEECE30' AS char(16) for bit data) as "GuidN",
			Char('ENUM1_VALUE', 11) as "Enum",
			Char('ENUM2_VALUE', 11) as "EnumN",
			CAST(1 AS smallint) as "Bool",
			CAST(0 AS smallint) as "BoolN"
		FROM
			"Issue3360Table1" "r"
		WHERE
			"r"."Id" = 2
		UNION ALL
		SELECT
			"r_1"."Id",
			"r_1"."Byte",
			"r_1"."ByteN" as "Byte_1",
			"r_1"."Guid",
			"r_1"."GuidN",
			"r_1"."Enum",
			"r_1"."EnumN",
			"r_1"."Bool",
			"r_1"."BoolN"
		FROM
			"Issue3360Table1" "r_1"
		WHERE
			"r_1"."Id" = 4
	) "t1"
ORDER BY
	"t1"."Id"

