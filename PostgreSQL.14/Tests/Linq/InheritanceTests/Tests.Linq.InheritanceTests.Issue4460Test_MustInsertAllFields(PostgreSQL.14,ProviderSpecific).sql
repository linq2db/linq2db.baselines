INSERT BULK "Issue4460Table"(Id, Code, Name, Surname)

-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."Code",
	t1."Id",
	t1."Name",
	t1."Surname"
FROM
	"Issue4460Table" t1

