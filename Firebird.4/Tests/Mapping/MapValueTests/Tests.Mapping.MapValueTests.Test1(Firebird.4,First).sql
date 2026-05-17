-- Firebird.4 Firebird4

SELECT
	CASE
		WHEN "t"."EnumValue" = 'F' THEN 'First'
		WHEN "t"."EnumValue" = 'S' THEN 'Second'
		WHEN "t"."EnumValue" = 'T' THEN 'Third'
		ELSE "t"."EnumValue"
	END
FROM
	"MapValueTable" "t"
FETCH NEXT 1 ROWS ONLY

