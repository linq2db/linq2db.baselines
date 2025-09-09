BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	cb."Id",
	cb."Name",
	cb."ContactEmail",
	cb."Enabled"
FROM
	"CustomerBase" cb
WHERE
	cb."ClientType" = 'Client'

