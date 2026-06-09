-- YDB Ydb

SELECT
	contract.Id as Id,
	servProj.IdContract as IdContract
FROM
	Issue4613Service servProj
		INNER JOIN Issue4613Contract contract ON servProj.IdContract = contract.Id

