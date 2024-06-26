﻿BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Table1788

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS Table1788
(
	Id     Int32,
	Value1 Int32,

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO Table1788
(
	Id,
	Value1
)
VALUES
(
	1,
	11
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO Table1788
(
	Id,
	Value1
)
VALUES
(
	2,
	22
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO Table1788
(
	Id,
	Value1
)
VALUES
(
	3,
	33
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Id,
	t1.Value1
FROM
	Table1788 t1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	CASE
		WHEN l_1.Id IS NOT NULL THEN CASE
			WHEN l_1.HasValue IS NULL THEN NULL
			WHEN l_1.HasValue = true THEN true
			ELSE false
		END
		ELSE false
	END,
	l_1.Value1
FROM
	Table1788 p
		LEFT JOIN (
			SELECT
				CASE
					WHEN l.Value1 IS NOT NULL THEN true
					ELSE false
				END as HasValue,
				l.Id as Id,
				l.Value1 as Value1
			FROM
				Table1788 l
		) l_1 ON l_1.Id = p.Id + 1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Table1788

