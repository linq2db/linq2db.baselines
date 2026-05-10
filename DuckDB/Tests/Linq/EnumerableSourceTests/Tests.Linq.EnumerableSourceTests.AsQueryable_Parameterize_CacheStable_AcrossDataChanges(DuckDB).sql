-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 0
DECLARE $Data NVarChar(6) -- String
SET     $Data = 'Data 0'
DECLARE $Id_1  -- Int32
SET     $Id_1 = 1
DECLARE $Data_1 NVarChar(6) -- String
SET     $Data_1 = 'Data 1'

SELECT
	t1.Id,
	t1."Data"
FROM
	(VALUES
		($Id,$Data), ($Id_1,$Data_1)
	) t1(Id, "Data")
ORDER BY
	t1.Id

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 100
DECLARE $Data NVarChar(8) -- String
SET     $Data = 'Data 100'
DECLARE $Id_1  -- Int32
SET     $Id_1 = 101
DECLARE $Data_1 NVarChar(8) -- String
SET     $Data_1 = 'Data 101'

SELECT
	t1.Id,
	t1."Data"
FROM
	(VALUES
		($Id,$Data), ($Id_1,$Data_1)
	) t1(Id, "Data")
ORDER BY
	t1.Id

