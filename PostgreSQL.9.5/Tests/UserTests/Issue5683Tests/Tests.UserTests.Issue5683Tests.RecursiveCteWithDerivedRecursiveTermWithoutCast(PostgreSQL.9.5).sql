-- PostgreSQL.9.5 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 20
DECLARE @skip Integer -- Int32
SET     @skip = 0

WITH RECURSIVE "partHierarchy"
(
	"RootPartSortField",
	"RootPartId",
	"HierarchyLevel",
	"PartId"
)
AS
(
	SELECT
		t1."RootPartSortField",
		t1."RootPartId",
		t1."HierarchyLevel",
		t1."RootPartId"
	FROM
		(
			SELECT
				x."Name" as "RootPartSortField",
				x."Id" as "RootPartId",
				0::Int as "HierarchyLevel"
			FROM
				"Part" x
			ORDER BY
				x."Name"
			LIMIT :take OFFSET :skip 
		) t1
	UNION ALL
	SELECT
		t2."RootPartSortField",
		t2."RootPartId",
		t2."HierarchyLevel" + 1,
		reference_1."ReferenceId"
	FROM
		"partHierarchy" t2
			INNER JOIN "Reference" reference_1 ON reference_1."ParentId" = t2."PartId"
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

