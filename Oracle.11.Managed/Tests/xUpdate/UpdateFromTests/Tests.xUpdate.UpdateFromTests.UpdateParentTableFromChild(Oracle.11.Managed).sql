-- Oracle.11.Managed Oracle11

UPDATE
	"ParentTable"
SET
	"Value" = "ParentTable"."Value" * 10
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"ChildTable" c_1
				INNER JOIN "ParentTable" a_Parent ON c_1."ParentId" = a_Parent."Id"
		WHERE
			a_Parent."Id" = 2 AND "ParentTable"."Id" = a_Parent."Id"
	)

-- Oracle.11.Managed Oracle11

SELECT
	p."Id",
	p."Value"
FROM
	"ParentTable" p
WHERE
	p."Id" = 2 AND ROWNUM <= 1

