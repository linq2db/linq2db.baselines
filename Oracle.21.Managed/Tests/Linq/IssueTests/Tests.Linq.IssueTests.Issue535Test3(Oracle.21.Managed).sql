-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	cb."Id",
	cb."Name",
	cb."ContactEmail",
	cb."Enabled"
FROM
	"CustomerBase" cb
WHERE
	cb."ClientType" = 'Client'

