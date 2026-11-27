-- PostgreSQL.9.3 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 20
DECLARE @skip Integer -- Int32
SET     @skip = 0

WITH RECURSIVE "partHierarchy" ("RootPartSortField", "RootPartId", "PartId")
AS
(
	SELECT
		t1."RootPartSortField",
		t1."RootPartId",
		t1."RootPartId"
	FROM
		(
			SELECT
				x."Name" as "RootPartSortField",
				x."Id" as "RootPartId"
			FROM
				"PartNode" x
			ORDER BY
				x."Name"
			LIMIT :take OFFSET :skip 
		) t1
	UNION ALL
	SELECT
		t2."RootPartSortField",
		t2."RootPartId",
		reference."ReferenceId"
	FROM
		"partHierarchy" t2
			INNER JOIN "PartReference" reference ON reference."ParentId" = t2."PartId"
)
SELECT
	id."RootPartId",
	id."RootPartSortField",
	me."Id",
	me."Name"
FROM
	"PartNode" me
		INNER JOIN "partHierarchy" id ON me."Id" = id."PartId"

