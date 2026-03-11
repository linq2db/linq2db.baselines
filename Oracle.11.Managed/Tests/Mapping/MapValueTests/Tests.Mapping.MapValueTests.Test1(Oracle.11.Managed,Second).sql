-- Oracle.11.Managed Oracle11

SELECT
	CASE
		WHEN t."EnumValue" = 'F' THEN 'First'
		WHEN t."EnumValue" = 'S' THEN 'Second'
		WHEN t."EnumValue" = 'T' THEN 'Third'
		ELSE t."EnumValue"
	END
FROM
	"MapValueTable" t
WHERE
	ROWNUM <= 1

