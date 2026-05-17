-- Firebird.3 Firebird3

SELECT
	CASE
		WHEN "t"."EnumValue" = 'S' THEN 'Second'
		WHEN "t"."EnumValue" = 'T' THEN 'Third'
		WHEN "t"."EnumValue" = 'F' THEN 'First'
		ELSE "t"."EnumValue"
	END
FROM
	"MapValueTable" "t"
FETCH NEXT 1 ROWS ONLY

