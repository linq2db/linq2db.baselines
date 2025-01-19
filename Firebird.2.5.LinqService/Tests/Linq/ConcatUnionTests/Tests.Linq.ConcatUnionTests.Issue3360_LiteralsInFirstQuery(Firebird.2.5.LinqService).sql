BeforeExecute
-- Firebird.2.5 Firebird

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
			CAST(X'0B8AFE27481C442EB8CF729DDFEECE29' AS CHAR(16) CHARACTER SET OCTETS) as "Guid",
			CAST(X'0B8AFE27481C442EB8CF729DDFEECE30' AS CHAR(16) CHARACTER SET OCTETS) as "GuidN",
			CAST('ENUM1_VALUE' AS CHAR(11)) as "Enum",
			CAST('ENUM2_VALUE' AS CHAR(11)) as "EnumN",
			CAST('1' AS CHAR(1)) as "Bool",
			CAST('0' AS CHAR(1)) as "BoolN"
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

