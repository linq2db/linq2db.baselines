BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Dto

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS Dto
(
	id        Int32,
	name      Nullable(String),
	parent_id Nullable(Int32),
	FullName  Nullable(String)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

WITH RECURSIVE d AS
(
	SELECT
		a.name as FullName,
		a.id as Dto_id,
		a.name as Dto_name,
		a.parent_id as Dto_parent_id,
		a.FullName as Dto_FullName
	FROM
		Dto a
	WHERE
		a.parent_id IS NULL
	UNION ALL
	SELECT
		concat(recur.FullName, ' > ', t1.name) as FullName,
		t1.id as Dto_id,
		t1.name as Dto_name,
		t1.parent_id as Dto_parent_id,
		t1.FullName as Dto_FullName
	FROM
		Dto t1
			INNER JOIN d recur ON recur.Dto_id = t1.parent_id AND t1.parent_id IS NOT NULL
)
SELECT
	t2.Dto_id,
	t2.Dto_name,
	t2.Dto_parent_id,
	t2.Dto_FullName,
	t2.FullName
FROM
	d t2

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Dto

