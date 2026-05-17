-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1."Data"
FROM
	(
		SELECT 20::Int AS Id, 'Data 20'::NVarChar(255) AS "Data" FROM table(set{1})
		UNION ALL
		SELECT 21::Int, 'Data 21'::NVarChar(255) FROM table(set{1})
		UNION ALL
		SELECT 22::Int, 'Data 22'::NVarChar(255) FROM table(set{1})) t1

