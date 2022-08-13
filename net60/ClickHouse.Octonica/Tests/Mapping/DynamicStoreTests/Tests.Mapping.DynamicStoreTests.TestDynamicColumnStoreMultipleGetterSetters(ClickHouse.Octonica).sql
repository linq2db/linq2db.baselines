﻿BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS DynamicColumnsTestTable

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS DynamicColumnsTestTable
(
	Id   Int32,
	Name Nullable(String)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS DynamicColumnsTestTable

