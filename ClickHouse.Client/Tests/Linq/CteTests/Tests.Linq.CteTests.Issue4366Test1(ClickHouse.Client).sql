BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Dto

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS Dto
(
	id        Int32,
	name      Nullable(String),
	parent_id Nullable(Int32),
	FullName  Nullable(String)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

WITH RECURSIVE d AS
(
	SELECT
		a.name as FullName,
		a.id,
		a.parent_id,
		a.name
	FROM
		Dto a
	WHERE
		a.parent_id IS NULL
	UNION ALL
	SELECT
		concat(recur.FullName, ' > ', t1.name) as FullName,
		t1.id as id,
		t1.parent_id as parent_id,
		t1.name as name
	FROM
		Dto t1
			INNER JOIN d recur ON recur.id = t1.parent_id AND t1.parent_id IS NOT NULL
)
SELECT
	t2.id,
	t2.parent_id,
	t2.name,
	t2.FullName
FROM
	d t2

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Dto

