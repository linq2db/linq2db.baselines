-- ClickHouse.Octonica ClickHouse
WITH RECURSIVE partHierarchy AS
(
	SELECT
		x.Name as RootPartSortField,
		x.Id as RootPartId,
		toInt32(0) as HierarchyLevel,
		x.Id as PartId
	FROM
		Part x
	UNION ALL
	SELECT
		t1.RootPartSortField as RootPartSortField,
		t1.RootPartId as RootPartId,
		t1.HierarchyLevel + 1 as HierarchyLevel,
		reference_1.ReferenceId as PartId
	FROM
		partHierarchy t1
			INNER JOIN Reference reference_1 ON reference_1.ParentId = t1.PartId
)
SELECT
	id.RootPartId,
	id.RootPartSortField,
	id.HierarchyLevel,
	me.Id,
	me.Name
FROM
	Part me
		INNER JOIN partHierarchy id ON me.Id = id.PartId

