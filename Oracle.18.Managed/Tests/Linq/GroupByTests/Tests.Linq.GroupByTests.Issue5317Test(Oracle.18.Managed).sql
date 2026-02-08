-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	t2."ReferenceName"
FROM
	(
		SELECT
			g_1."Id"
		FROM
			"TestTable" g_1
		GROUP BY
			g_1."Id"
	) g_2
		CROSS APPLY (
			SELECT
				a_Reference."Name" as "ReferenceName"
			FROM
				"TestTable" t1
					INNER JOIN "Reference" a_Reference ON t1."ReferenceId" = a_Reference."Id"
			WHERE
				g_2."Id" = t1."Id"
			FETCH NEXT 1 ROWS ONLY
		) t2

-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Name",
	t1."ReferenceId",
	a_Reference."Id",
	a_Reference."Name"
FROM
	"TestTable" t1
		INNER JOIN "Reference" a_Reference ON t1."ReferenceId" = a_Reference."Id"

-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Name",
	t1."ReferenceId"
FROM
	"TestTable" t1

