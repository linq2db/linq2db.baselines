-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	CASE
		WHEN t."EnumValue" = 'F' THEN To_NChar('First')
		WHEN t."EnumValue" = 'S' THEN To_NChar('Second')
		WHEN t."EnumValue" = 'T' THEN To_NChar('Third')
		ELSE t."EnumValue"
	END as "c1"
FROM
	"MapValueTable" t
FETCH NEXT 1 ROWS ONLY

