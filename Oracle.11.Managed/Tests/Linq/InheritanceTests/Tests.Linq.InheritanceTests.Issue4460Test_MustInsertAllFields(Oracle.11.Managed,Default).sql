-- Oracle.11.Managed Oracle11

INSERT ALL
	INTO "Issue4460Table" ("Id", "Code", "Name", "Surname") VALUES (1,'GrandChild','Tom','Black')
SELECT * FROM dual

-- Oracle.11.Managed Oracle11

SELECT
	t1."Code",
	t1."Id",
	t1."Name",
	t1."Surname"
FROM
	"Issue4460Table" t1

