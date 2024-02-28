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
(toInt32(1),'MasterValue_1',false),
(toInt32(2),'MasterValue_2',false),
(toInt32(3),'MasterValue_3',true),
(toInt32(4),'MasterValue_4',false),
(toInt32(5),'MasterValue_5',false),
(toInt32(6),'MasterValue_6',true),
(toInt32(7),'MasterValue_7',false),
(toInt32(8),'MasterValue_8',false),
(toInt32(9),'MasterValue_9',true),
(toInt32(10),'MasterValue_10',false)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	e.Id,
	e.Value,
	e.IsDeleted
FROM
	MasterClass e

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS MasterClass

