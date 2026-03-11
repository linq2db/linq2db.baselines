-- Oracle.11.Managed Oracle11

SELECT
	CASE
		WHEN t."EnumValue" = 'F' THEN CAST('First' AS NVarChar2(255))
		WHEN t."EnumValue" = 'S' THEN CAST('Second' AS NVarChar2(255))
		WHEN t."EnumValue" = 'T' THEN CAST('Third' AS NVarChar2(255))
		ELSE t."EnumValue"
	END
FROM
	"MapValueTable" t
WHERE
	ROWNUM <= 1

