-- PostgreSQL.13 PostgreSQL12

SELECT
	cb."Id",
	cb."Name",
	cb."ContactEmail",
	cb."Enabled"
FROM
	"CustomerBase" cb
WHERE
	cb."ClientType" = 'Client'

