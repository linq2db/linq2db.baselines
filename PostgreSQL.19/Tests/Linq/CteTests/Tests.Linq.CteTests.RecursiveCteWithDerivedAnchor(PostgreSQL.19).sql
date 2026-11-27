-- PostgreSQL.19 PostgreSQL12
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
		x."Name",
		x."Id",
		0::Int,
		x."Id"
	FROM
		"DerivedTermPart" x
	UNION ALL
	SELECT
		t1."RootPartSortField",
		t1."RootPartId",
		t1."HierarchyLevel" + 1,
		reference."ReferenceId"
	FROM
		"partHierarchy" t1
			INNER JOIN "DerivedTermReference" reference ON reference."ParentId" = t1."PartId"
)
SELECT
	id."RootPartId",
	id."RootPartSortField",
	id."HierarchyLevel",
	me."Id",
	me."Name"
FROM
	"DerivedTermPart" me
		INNER JOIN "partHierarchy" id ON me."Id" = id."PartId"

