-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT
	r."Id"
FROM
	"Issue5777Row" r
WHERE
	Extract(epoch From (r."ClosedOn" - r."OpenedOn")) / 86400 < 12

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT
	r."Id"
FROM
	"Issue5777Row" r
ORDER BY
	Extract(epoch From (r."ClosedOn" - r."OpenedOn")) / 3600

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT
	Extract(epoch From (r."ClosedOn" - r."OpenedOn")) / 86400,
	Extract(epoch From (r."ClosedOn" - r."OpenedOn")) / 3600,
	Extract(epoch From (r."ClosedOn" - r."OpenedOn")) / 60,
	Trunc(Extract(day From (r."ClosedOn" - r."OpenedOn")))::Int,
	Trunc(Extract(hour From (r."ClosedOn" - r."OpenedOn")))::Int
FROM
	"Issue5777Row" r
WHERE
	r."Id" = 1
LIMIT 2

