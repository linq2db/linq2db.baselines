-- ClickHouse.Driver ClickHouse

WITH RECURSIVE partHierarchy AS
(
	SELECT
		t1.RootPartSortField as RootPartSortField,
		t1.RootPartId as RootPartId,
		t1.RootPartId as PartId
	FROM
		(
			SELECT
				x.Name as RootPartSortField,
				x.Id as RootPartId
			FROM
				Issue5457Part x
			ORDER BY
				x.Name
			LIMIT 0, 20
		) t1
	UNION ALL
	SELECT
		t2.RootPartSortField as RootPartSortField,
		t2.RootPartId as RootPartId,
		reference.ReferenceId as PartId
	FROM
		partHierarchy t2
			INNER JOIN Issue5457Reference reference ON reference.ParentId = t2.PartId
)
SELECT
	id.RootPartId,
	id.RootPartSortField,
	me.Id,
	me.Name
FROM
	Issue5457Part me
		INNER JOIN partHierarchy id ON me.Id = id.PartId

