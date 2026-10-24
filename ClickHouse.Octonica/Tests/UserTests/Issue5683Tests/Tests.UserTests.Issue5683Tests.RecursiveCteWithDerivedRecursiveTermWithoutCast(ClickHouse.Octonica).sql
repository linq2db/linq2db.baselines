-- ClickHouse.Octonica ClickHouse
WITH RECURSIVE partHierarchy AS
(
	SELECT
		t1.RootPartSortField as RootPartSortField,
		t1.RootPartId as RootPartId,
		t1.HierarchyLevel as HierarchyLevel,
		t1.RootPartId as PartId
	FROM
		(
			SELECT
				x.Name as RootPartSortField,
				x.Id as RootPartId,
				toInt32(0) as HierarchyLevel
			FROM
				Part x
			ORDER BY
				x.Name
			LIMIT 0, 20
		) t1
	UNION ALL
	SELECT
		t2.RootPartSortField as RootPartSortField,
		t2.RootPartId as RootPartId,
		t2.HierarchyLevel + 1 as HierarchyLevel,
		reference_1.ReferenceId as PartId
	FROM
		partHierarchy t2
			INNER JOIN Reference reference_1 ON reference_1.ParentId = t2.PartId
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

