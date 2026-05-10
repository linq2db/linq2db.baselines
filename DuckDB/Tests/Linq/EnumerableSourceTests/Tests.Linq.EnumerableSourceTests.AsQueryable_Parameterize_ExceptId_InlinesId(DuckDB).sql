-- DuckDB
DECLARE $Data NVarChar(9) -- String
SET     $Data = 'Data 7777'
DECLARE $Data_1 NVarChar(9) -- String
SET     $Data_1 = 'Data 7778'

SELECT
	t1.Id,
	t1."Data"
FROM
	(VALUES
		(7777,$Data), (7778,$Data_1)
	) t1(Id, "Data")

