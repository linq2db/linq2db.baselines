-- PostgreSQL.9.3 PostgreSQL
SELECT
	cb."Id",
	cb."Name",
	cb."ContactEmail",
	cb."Enabled"
FROM
	"EnumClientRecord" cb
WHERE
	cb."ClientType" = 'Client'

