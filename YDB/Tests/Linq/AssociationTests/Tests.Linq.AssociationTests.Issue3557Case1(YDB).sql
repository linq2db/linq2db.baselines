-- YDB Ydb

SELECT
	i.Id as Id,
	CASE
		WHEN a_SubData.Id IS NULL THEN NULL
		ELSE t2.Reason
	END as Reason
FROM
	`Data` i
		LEFT JOIN SubData1 a_SubData ON i.Id = a_SubData.Id
		LEFT JOIN (
			SELECT
				t1.Reason as Reason,
				t1.Id as Id
			FROM
				(
					SELECT
						a_SubDatas.Reason as Reason,
						ROW_NUMBER() OVER (PARTITION BY a_SubDatas.Id ORDER BY a_SubDatas.Id) as rn,
						a_SubDatas.Id as Id
					FROM
						SubData2 a_SubDatas
				) t1
			WHERE
				t1.rn = 1
		) t2 ON a_SubData.Id = t2.Id
ORDER BY
	i.Id

