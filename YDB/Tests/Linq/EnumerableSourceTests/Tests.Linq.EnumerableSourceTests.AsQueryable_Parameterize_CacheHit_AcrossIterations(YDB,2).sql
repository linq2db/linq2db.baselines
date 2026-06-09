-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 20
DECLARE $Data Text(7) -- String
SET     $Data = 'Data 20'u
DECLARE $Id_1 Int32
SET     $Id_1 = 21
DECLARE $Data_1 Text(7) -- String
SET     $Data_1 = 'Data 21'u
DECLARE $Id_2 Int32
SET     $Id_2 = 22
DECLARE $Data_2 Text(7) -- String
SET     $Data_2 = 'Data 22'u

SELECT
	t1.Id as Id,
	t1.`Data` as Data_1
FROM
	(VALUES
		($Id,$Data), ($Id_1,$Data_1), ($Id_2,$Data_2)
	) t1(Id, `Data`)

