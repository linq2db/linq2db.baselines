-- DuckDB
DECLARE $ParentID  -- Int32
SET     $ParentID = 1010
DECLARE $Value1  -- Int32
SET     $Value1 = 1010

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

UPDATE
	Parent
SET
	Value1 = 1011
WHERE
	Parent.ParentID = 1010

CommitTransaction
-- DuckDB

SELECT
	t.ParentID,
	t.Value1
FROM
	Parent t
WHERE
	t.ParentID = 1010
LIMIT 1

