-- ClickHouse.MySql ClickHouse
DROP TABLE IF EXISTS DescriptorStabilityRecord

-- ClickHouse.MySql ClickHouse
CREATE TABLE DescriptorStabilityRecord
(
	Id Int32,

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

