BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS TestFolder

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS TestFolder
(
	Id       UUID,
	Label    Nullable(String),
	ParentId Nullable(UUID)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

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

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS TestFolder

