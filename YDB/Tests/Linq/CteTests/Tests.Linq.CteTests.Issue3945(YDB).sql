-- YDB Ydb

$CTE = 	SELECT
		c_1.ParentId as ParentId,
		c_1.Label as Label
	FROM
		TestFolder c_1
	WHERE
		c_1.ParentId IS NOT NULL
;

INSERT INTO TestFolder
(
	Id,
	Label
)
SELECT
	Uuid('bc7b663d-0fde-4327-8f92-5d8cc3a11d11') as Id,
	Coalesce(parent.Label, ''u) || '/'u || Coalesce(child.Label, ''u) as Label
FROM
	$CTE child
		INNER JOIN TestFolder parent ON child.ParentId = parent.Id

