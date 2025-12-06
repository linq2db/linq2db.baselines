-- Firebird.3 Firebird3

SELECT
	Coalesce("t1"."EnumNullable", "t1"."Enum")
FROM
	"ValueConversion" "t1"

