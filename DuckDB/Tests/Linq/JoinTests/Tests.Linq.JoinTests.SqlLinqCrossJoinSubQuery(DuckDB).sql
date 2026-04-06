-- DuckDB
DECLARE $take  -- Int32
SET     $take = 10
DECLARE $take_1  -- Int32
SET     $take_1 = 10

SELECT
	p_1.ParentID,
	t1.ChildID
FROM
	(
		SELECT
			p.ParentID
		FROM
			Parent p
		WHERE
			p.ParentID > 0
		LIMIT CAST($take AS INTEGER)
	) p_1,
	(
		SELECT
			c_1.ChildID
		FROM
			Child c_1
		LIMIT CAST($take_1 AS INTEGER)
	) t1

