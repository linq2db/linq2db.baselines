BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS MasterClass

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS MasterClass
(
	Id        Int32,
	Value     Nullable(String),
	IsDeleted Bool
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO MasterClass
(
	Id,
	Value,
	IsDeleted
)
VALUES
(1,'MasterValue_1',false),
(2,'MasterValue_2',false),
(3,'MasterValue_3',true),
(4,'MasterValue_4',false),
(5,'MasterValue_5',false),
(6,'MasterValue_6',true),
(7,'MasterValue_7',false),
(8,'MasterValue_8',false),
(9,'MasterValue_9',true),
(10,'MasterValue_10',false)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	m_1.Id,
	m_1.Value,
	m_1.IsDeleted
FROM
	MasterClass m_1
		INNER JOIN MasterClass d ON d.Id = m_1.Id
WHERE
	NOT m_1.IsDeleted AND NOT d.IsDeleted

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS MasterClass

