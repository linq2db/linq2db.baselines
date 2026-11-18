-- Oracle.11.Managed Oracle11
DECLARE @skip Int32
SET     @skip = 0
DECLARE @take Int32
SET     @take = 20

WITH "partHierarchy"
(
	"RootPartSortField",
	"RootPartId",
	"HierarchyLevel",
	"PartId"
)
AS
(
	SELECT
		t3."RootPartSortField",
		t3."RootPartId",
		t3."HierarchyLevel",
		t3."RootPartId"
	FROM
		(
			SELECT
				t2."RootPartSortField",
				t2."RootPartId",
				t2."HierarchyLevel"
			FROM
				(
					SELECT
						t1."RootPartSortField",
						t1."RootPartId",
						t1."HierarchyLevel",
						ROWNUM as RN
					FROM
						(
							SELECT
								x."Name" as "RootPartSortField",
								x."Id" as "RootPartId",
								CAST(0 AS Int) as "HierarchyLevel"
							FROM
								"Part" x
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
		t4."HierarchyLevel" + 1,
		reference_1."ReferenceId"
	FROM
		"partHierarchy" t4
			INNER JOIN "Reference" reference_1 ON reference_1."ParentId" = t4."PartId"
)
SELECT
	id."RootPartId",
	id."RootPartSortField",
	id."HierarchyLevel",
	me."Id",
	me."Name"
FROM
	"Part" me
		INNER JOIN "partHierarchy" id ON me."Id" = id."PartId"

