-- YDB Ydb
DECLARE $Data Text(7) -- String
SET     $Data = 'Data 10'u
DECLARE $Data_1 Text(7) -- String
SET     $Data_1 = 'Data 11'u

SELECT
	t1.Id as Id,
	t1.`Data` as Data_1
FROM
	(VALUES
		(10,$Data), (11,$Data_1)
	) t1(Id, `Data`)

