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

