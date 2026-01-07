-- Oracle.11.Managed Oracle11

SELECT
	CASE
		WHEN t."EnumValue" = 'S' THEN 'Second'
		WHEN t."EnumValue" = 'T' THEN 'Third'
		WHEN t."EnumValue" = 'F' THEN 'First'
		ELSE t."EnumValue"
	END
FROM
	"MapValueTable" t
WHERE
	ROWNUM <= 1

