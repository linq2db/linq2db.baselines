-- Oracle.11.Managed Oracle11
DECLARE @skip Int32
SET     @skip = 0
DECLARE @take Int32
SET     @take = 20

WITH "partHierarchy" ("RootPartSortField", "RootPartId", "PartId")
AS
(
	SELECT
		t3."RootPartSortField",
		t3."RootPartId",
		t3."RootPartId"
	FROM
		(
			SELECT
				t2."RootPartSortField",
				t2."RootPartId"
			FROM
				(
					SELECT
						t1."RootPartSortField",
						t1."RootPartId",
						ROWNUM as RN
					FROM
						(
							SELECT
								x."Name" as "RootPartSortField",
								x."Id" as "RootPartId"
							FROM
								"Issue5457Part" x
							ORDER BY
								x."Name"
						) t1
					WHERE
						ROWNUM <= (:skip + :take)
				) t2
			WHERE
				t2.RN > :skip
		) t3
	UNION ALL
	SELECT
		t4."RootPartSortField",
		t4."RootPartId",
		reference."ReferenceId"
	FROM
		"partHierarchy" t4
			INNER JOIN "Issue5457Reference" reference ON reference."ParentId" = t4."PartId"
)
SELECT
	id."RootPartId",
	id."RootPartSortField",
	me."Id",
	me."Name"
FROM
	"Issue5457Part" me
		INNER JOIN "partHierarchy" id ON me."Id" = id."PartId"

