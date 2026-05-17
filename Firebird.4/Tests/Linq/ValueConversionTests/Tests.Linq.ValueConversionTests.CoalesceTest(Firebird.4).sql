-- Firebird.4 Firebird4

SELECT
	Coalesce("t1"."EnumNullable", "t1"."Enum")
FROM
	"ValueConversion" "t1"

