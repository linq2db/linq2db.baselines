-- YDB Ydb
DECLARE $Data Text(7) -- String
SET     $Data = 'Data 20'u
DECLARE $Data_1 Text(7) -- String
SET     $Data_1 = 'Data 21'u
DECLARE $Data_2 Text(7) -- String
SET     $Data_2 = 'Data 22'u

SELECT
	t1.Id as Id,
	t1.`Data` as Data_1
FROM
	(VALUES
		(20,$Data), (21,$Data_1), (22,$Data_2)
	) t1(Id, `Data`)

