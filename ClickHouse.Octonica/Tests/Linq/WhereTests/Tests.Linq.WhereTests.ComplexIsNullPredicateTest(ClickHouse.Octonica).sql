﻿BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS ComplexPredicate

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS ComplexPredicate
(
	Id    Int32,
	Value Nullable(String)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO ComplexPredicate
(
	Id,
	Value
)
VALUES
(1,NULL),
(2,'other'),
(3,'123'),
(4,'test'),
(5,'1')

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Id,
	r.Value
FROM
	ComplexPredicate r
WHERE
	CASE
		WHEN r.Value = '123' THEN true
		ELSE false
	END = CASE
		WHEN r.Value = '1' OR r.Value = 'test' AND (r.Value <> '1' OR r.Value IS NULL)
			THEN true
		ELSE false
	END
ORDER BY
	r.Id

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Id,
	t1.Value
FROM
	ComplexPredicate t1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS ComplexPredicate

