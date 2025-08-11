BeforeExecute
-- ClickHouse.Driver ClickHouse

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
			INNER JOIN d recur ON recur.id = t1.parent_id
)
SELECT
	t2.id,
	t2.parent_id,
	t2.name,
	t2.FullName
FROM
	d t2

