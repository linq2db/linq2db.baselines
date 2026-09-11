-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 0
DECLARE $Data Text(6) -- String
SET     $Data = 'Data 0'u
DECLARE $Id_1 Int32
SET     $Id_1 = 1
DECLARE $Data_1 Text(6) -- String
SET     $Data_1 = 'Data 1'u

SELECT
	t1.Id as Id,
	t1.`Data` as Data_1
FROM
	(VALUES
		($Id,$Data), ($Id_1,$Data_1)
	) t1(Id, `Data`)
ORDER BY
	t1.Id

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 100
DECLARE $Data Text(8) -- String
SET     $Data = 'Data 100'u
DECLARE $Id_1 Int32
SET     $Id_1 = 101
DECLARE $Data_1 Text(8) -- String
SET     $Data_1 = 'Data 101'u

SELECT
	t1.Id as Id,
	t1.`Data` as Data_1
FROM
	(VALUES
		($Id,$Data), ($Id_1,$Data_1)
	) t1(Id, `Data`)
ORDER BY
	t1.Id

