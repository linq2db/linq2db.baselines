-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1."Data"
FROM
	(
		SELECT 10::Int AS Id, 'Data 10'::NVarChar(255) AS "Data" FROM table(set{1})
		UNION ALL
		SELECT 11::Int, 'Data 11'::NVarChar(255) FROM table(set{1})) t1

