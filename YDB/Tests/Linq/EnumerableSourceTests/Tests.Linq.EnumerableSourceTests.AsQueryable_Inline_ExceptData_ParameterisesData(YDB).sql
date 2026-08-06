-- YDB Ydb
DECLARE $Data Text(9) -- String
SET     $Data = 'Data 7777'u
DECLARE $Data_1 Text(9) -- String
SET     $Data_1 = 'Data 7778'u

SELECT
	t1.Id as Id,
	t1.`Data` as Data_1
FROM
	(VALUES
		(7777,$Data), (7778,$Data_1)
	) t1(Id, `Data`)
ORDER BY
	t1.Id

