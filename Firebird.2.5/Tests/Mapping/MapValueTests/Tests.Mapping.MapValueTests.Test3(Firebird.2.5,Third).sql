-- Firebird.2.5 Firebird

SELECT FIRST 1
	CASE
		WHEN "t"."EnumValue" = 'S' THEN 'Second'
		WHEN "t"."EnumValue" = 'T' THEN 'Third'
		WHEN "t"."EnumValue" = 'F' THEN 'First'
		ELSE "t"."EnumValue"
	END
FROM
	"MapValueTable" "t"

