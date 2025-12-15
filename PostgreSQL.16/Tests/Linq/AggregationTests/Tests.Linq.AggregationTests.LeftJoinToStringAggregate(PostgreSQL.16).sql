-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	u."Id",
	u."Name",
	aq."MachineNames",
	aq."Count_1"
FROM
	"User" u
		LEFT JOIN (
			SELECT
				g_1."UserId" as "Key_1",
				STRING_AGG("a_Machine"."Name", ', ' ORDER BY "a_Machine"."Name" NULLS FIRST) as "MachineNames",
				COUNT(*) as "Count_1"
			FROM
				"UserMachineAssignment" g_1
					INNER JOIN "Machine" "a_Machine" ON g_1."MachineId" = "a_Machine"."Id" OR g_1."MachineId" IS NULL AND "a_Machine"."Id" IS NULL
			GROUP BY
				g_1."UserId"
		) aq ON aq."Key_1" = u."Id"

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t1."Id",
	t1."Name"
FROM
	"User" t1

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t1."UserId",
	t1."MachineId",
	"a_Machine"."Id",
	"a_Machine"."Name"
FROM
	"UserMachineAssignment" t1
		INNER JOIN "Machine" "a_Machine" ON t1."MachineId" = "a_Machine"."Id" OR t1."MachineId" IS NULL AND "a_Machine"."Id" IS NULL

