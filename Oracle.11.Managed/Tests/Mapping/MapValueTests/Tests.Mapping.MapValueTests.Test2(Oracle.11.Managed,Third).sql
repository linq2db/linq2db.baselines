-- Oracle.11.Managed Oracle11

SELECT
	CASE
		WHEN t."EnumValue" = 'F' THEN To_NChar('First')
		WHEN t."EnumValue" = 'S' THEN To_NChar('Second')
		WHEN t."EnumValue" = 'T' THEN To_NChar('Third')
		ELSE t."EnumValue"
	END
FROM
	"MapValueTable" t
WHERE
	ROWNUM <= 1

