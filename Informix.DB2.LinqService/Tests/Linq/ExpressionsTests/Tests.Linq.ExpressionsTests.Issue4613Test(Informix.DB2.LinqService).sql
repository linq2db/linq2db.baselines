BeforeExecute
-- Informix.DB2 Informix

SELECT
	contract.Id,
	servProj.IdContract
FROM
	Issue4613Service servProj
		INNER JOIN Issue4613Contract contract ON servProj.IdContract = contract.Id

