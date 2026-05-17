-- DuckDB
DECLARE $Data NVarChar(7) -- String
SET     $Data = 'Data 20'
DECLARE $Data_1 NVarChar(7) -- String
SET     $Data_1 = 'Data 21'
DECLARE $Data_2 NVarChar(7) -- String
SET     $Data_2 = 'Data 22'

SELECT
	t1.Id,
	t1."Data"
FROM
	(VALUES
		(20,$Data), (21,$Data_1), (22,$Data_2)
	) t1(Id, "Data")

