-- DuckDB

DELETE FROM
	Parent c_1
WHERE
	c_1.ParentID >= 1000

INSERT BULK Parent(ParentID, Value1)

-- DuckDB

DELETE FROM
	Parent p
WHERE
	p.ParentID = 1000 AND p.Value1 IS NULL OR p.ParentID = 1001 AND p.Value1 IS NULL

-- DuckDB

DELETE FROM
	Parent c_1
WHERE
	c_1.ParentID >= 1000

