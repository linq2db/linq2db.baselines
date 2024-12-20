﻿BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS SomeTable

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS SomeTable
(
	ClassProp Bool,
	Interface Bool
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO SomeTable
(
	ClassProp,
	Interface
)
VALUES
(
	true,
	false
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.ClassProp,
	t1.Interface
FROM
	SomeTable t1
LIMIT 2

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS SomeTable

