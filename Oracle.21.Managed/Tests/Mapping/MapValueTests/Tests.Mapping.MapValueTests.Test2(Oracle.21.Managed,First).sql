-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	CASE
		WHEN t."EnumValue" = 'F' THEN CAST('First' AS NVarChar2(255))
		WHEN t."EnumValue" = 'S' THEN CAST('Second' AS NVarChar2(255))
		WHEN t."EnumValue" = 'T' THEN CAST('Third' AS NVarChar2(255))
		ELSE t."EnumValue"
	END as "c1"
FROM
	"MapValueTable" t
FETCH NEXT 1 ROWS ONLY

