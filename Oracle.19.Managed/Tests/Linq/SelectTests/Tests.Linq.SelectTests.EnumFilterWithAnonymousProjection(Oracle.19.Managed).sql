-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	cb."Id",
	cb."Name",
	cb."ContactEmail",
	cb."Enabled"
FROM
	"EnumClientRecord" cb
WHERE
	cb."ClientType" = 'Client'

