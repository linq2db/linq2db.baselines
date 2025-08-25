BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	"t1"."Id",
	"t1"."Byte",
	"t1"."Byte_1",
	"t1"."Guid",
	"t1"."Guid_1",
	"t1"."Enum",
	"t1"."EnumN",
	"t1"."Bool",
	"t1"."Bool_1"
FROM
	(
		SELECT
			"r"."Id",
			CAST(NULL AS SmallInt) as "Byte",
			CAST(NULL AS SmallInt) as "Byte_1",
			CAST(NULL AS char(16) for bit data) as "Guid",
			CAST(NULL AS char(16) for bit data) as "Guid_1",
			CAST(NULL AS NChar(11)) as "Enum",
			CAST(NULL AS NChar(11)) as "EnumN",
			CAST(NULL AS smallint) as "Bool",
			CAST(NULL AS smallint) as "Bool_1"
		FROM
			"Issue3360Table1" "r"
		WHERE
			"r"."Id" = 1
		UNION ALL
		SELECT
			"r_1"."Id",
			"r_1"."Byte",
			"r_1"."ByteN" as "Byte_1",
			"r_1"."Guid",
			"r_1"."GuidN" as "Guid_1",
			"r_1"."Enum",
			"r_1"."EnumN",
			"r_1"."Bool",
			"r_1"."BoolN" as "Bool_1"
		FROM
			"Issue3360Table1" "r_1"
		WHERE
			"r_1"."Id" = 2
	) "t1"
ORDER BY
	"t1"."Id"

