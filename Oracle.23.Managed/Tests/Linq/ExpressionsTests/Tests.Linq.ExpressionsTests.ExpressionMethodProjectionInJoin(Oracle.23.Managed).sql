-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	contract."Id",
	servProj."IdContract"
FROM
	"ProjectionServiceTable" servProj
		INNER JOIN "ProjectionContractTable" contract ON servProj."IdContract" = contract."Id"

