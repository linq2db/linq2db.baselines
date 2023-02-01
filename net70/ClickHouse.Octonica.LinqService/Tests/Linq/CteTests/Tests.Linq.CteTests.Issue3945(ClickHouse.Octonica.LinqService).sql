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
	toUUID('c0bed27c-9912-4cf2-bc3c-878a5845811e'),
	concat(parent.Label, '/', child.Label)
FROM
	CTE child
		INNER JOIN TestFolder parent ON child.ParentId = parent.Id

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS TestFolder

