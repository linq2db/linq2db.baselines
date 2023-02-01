BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS TestFolder

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS TestFolder
(
	Id       UUID,
	Label    Nullable(String),
	ParentId Nullable(UUID)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

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
	toUUID('da59d75d-fe7b-4885-8e58-f6183c81f3a4'),
	concat(parent.Label, '/', child.Label)
FROM
	CTE child
		INNER JOIN TestFolder parent ON child.ParentId = parent.Id

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS TestFolder

