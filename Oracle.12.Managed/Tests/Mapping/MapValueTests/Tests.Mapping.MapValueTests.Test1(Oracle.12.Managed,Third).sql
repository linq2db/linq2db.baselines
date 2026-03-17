-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	CASE
		WHEN t."EnumValue" = 'F' THEN 'First'
		WHEN t."EnumValue" = 'S' THEN 'Second'
		WHEN t."EnumValue" = 'T' THEN 'Third'
		ELSE t."EnumValue"
	END as "c1"
FROM
	"MapValueTable" t
FETCH NEXT 1 ROWS ONLY

