-- YDB Ydb
SELECT
	contract.Id as Id,
	servProj.IdContract as IdContract
FROM
	ProjectionServiceTable servProj
		INNER JOIN ProjectionContractTable contract ON servProj.IdContract = contract.Id

