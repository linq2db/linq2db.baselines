-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1."Data"
FROM
	(
		SELECT 0::Int AS Id, 'Data 0'::NVarChar(255) AS "Data" FROM table(set{1})
		UNION ALL
		SELECT 1::Int, 'Data 1'::NVarChar(255) FROM table(set{1})
		UNION ALL
		SELECT 2::Int, 'Data 2'::NVarChar(255) FROM table(set{1})) t1

