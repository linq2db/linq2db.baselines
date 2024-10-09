BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Test3799Item

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS Test3799Item
(
	Id       Int32,
	ParentId Nullable(Int32),
	Name     String,

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO Test3799Item
(
	Id,
	ParentId,
	Name
)
VALUES
(
	1,
	NULL,
	'root'
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO Test3799Item
(
	Id,
	ParentId,
	Name
)
VALUES
(
	2,
	1,
	'child 1'
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO Test3799Item
(
	Id,
	ParentId,
	Name
)
VALUES
(
	3,
	2,
	'child 1.1'
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO Test3799Item
(
	Id,
	ParentId,
	Name
)
VALUES
(
	4,
	2,
	'child 1.2'
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO Test3799Item
(
	Id,
	ParentId,
	Name
)
VALUES
(
	5,
	1,
	'child 2'
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO Test3799Item
(
	Id,
	ParentId,
	Name
)
VALUES
(
	6,
	5,
	'child 2.1'
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO Test3799Item
(
	Id,
	ParentId,
	Name
)
VALUES
(
	7,
	5,
	'child 2.1'
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	m_1.Id,
	d.Name
FROM
	(
		SELECT DISTINCT
			t1.Id as Id
		FROM
			Test3799Item item_1
				LEFT JOIN (
					SELECT
						a_Children.Id as Id,
						ROW_NUMBER() OVER (PARTITION BY a_Children.ParentId ORDER BY a_Children.ParentId) as rn,
						a_Children.ParentId as ParentId
					FROM
						Test3799Item a_Children
				) t1 ON item_1.Id = t1.ParentId AND t1.rn <= 1
	) m_1
		INNER JOIN Test3799Item d ON m_1.Id = d.ParentId OR m_1.Id IS NULL AND d.ParentId IS NULL

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	item_1.Name,
	t1.Name,
	t1.Id
FROM
	Test3799Item item_1
		LEFT JOIN (
			SELECT
				a_Children.Name as Name,
				a_Children.Id as Id,
				ROW_NUMBER() OVER (PARTITION BY a_Children.ParentId ORDER BY a_Children.ParentId) as rn,
				a_Children.ParentId as ParentId
			FROM
				Test3799Item a_Children
		) t1 ON item_1.Id = t1.ParentId AND t1.rn <= 1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Test3799Item

