-- Oracle.12.Managed Oracle.Managed Oracle12
WITH CTE_1 ("Id", "Kind")
AS
(
	SELECT
		t1."Id",
		t1."Kind"
	FROM
		"SourceSchemaShape" t1
)
SELECT
	CASE
		WHEN s."Kind" = 'C1' THEN s."Kind"
		ELSE NULL
	END
FROM
	"Parent" x
		INNER JOIN CTE_1 s ON x."ParentID" = s."Id"
ORDER BY
	s."Id"

