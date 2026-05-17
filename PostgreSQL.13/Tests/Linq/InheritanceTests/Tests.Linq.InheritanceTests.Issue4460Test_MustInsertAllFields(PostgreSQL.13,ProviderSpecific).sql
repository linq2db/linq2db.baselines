INSERT BULK "Issue4460Table"(Id, Code, Name, Surname)

-- PostgreSQL.13 PostgreSQL

SELECT
	t1."Code",
	t1."Id",
	t1."Name",
	t1."Surname"
FROM
	"Issue4460Table" t1

