-- DuckDB
DECLARE $ParentID  -- Int32
SET     $ParentID = 1001
DECLARE $Value1  -- Object
SET     $Value1 = NULL

INSERT INTO Parent
(
	ParentID,
	Value1
)
VALUES
(
	CAST($ParentID AS INTEGER),
	CAST($Value1 AS INTEGER)
)

-- DuckDB

SELECT
	COUNT(*)
FROM
	Parent p
WHERE
	p.ParentID = 1001

