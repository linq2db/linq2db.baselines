BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	contract."Id",
	servProj."IdContract"
FROM
	"Issue4613Service" servProj
		INNER JOIN "Issue4613Contract" contract ON servProj."IdContract" = contract."Id"

