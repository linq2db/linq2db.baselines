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
		c_1.Id,
		c_1.Label,
		c_1.ParentId
	FROM
		TestFolder c_1
	WHERE
		c_1.ParentId IS NOT NULL
)
SELECT
	toUUID('2d8a42e3-3bc7-4382-a254-543842d419ed'),
	concat(parent.Label, '/', child.Label)
FROM
	CTE child
		INNER JOIN TestFolder parent ON child.ParentId = parent.Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS TestFolder

