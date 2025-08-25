BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

INSERT INTO TestFolder
(
	Id,
	Label
)
WITH CTE AS
(
	SELECT
		c_1.ParentId,
		c_1.Label
	FROM
		TestFolder c_1
	WHERE
		c_1.ParentId IS NOT NULL
)
SELECT
	toUUID('bc7b663d-0fde-4327-8f92-5d8cc3a11d11'),
	concat(parent.Label, '/', child.Label)
FROM
	CTE child
		INNER JOIN TestFolder parent ON child.ParentId = parent.Id

