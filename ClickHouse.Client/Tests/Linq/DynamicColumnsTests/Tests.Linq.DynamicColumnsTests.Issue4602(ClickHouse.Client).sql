BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS DynamicParent

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS DynamicParent
(
	ID Int32,

	PRIMARY KEY (ID)
)
ENGINE = MergeTree()
ORDER BY ID

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS DynamicChild

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS DynamicChild
(
	ID       Int32,
	ParentID Int32,

	PRIMARY KEY (ID)
)
ENGINE = MergeTree()
ORDER BY ID

BeforeExecute
-- ClickHouse.Client ClickHouse (asynchronously)

SELECT
	it.ID
FROM
	DynamicParent it
		LEFT JOIN DynamicChild a_Child ON it.ID = a_Child.ParentID
WHERE
	a_Child.ID = 123

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS DynamicChild

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS DynamicParent

