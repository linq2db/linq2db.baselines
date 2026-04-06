-- DuckDB
DECLARE $ParentID  -- Int32
SET     $ParentID = 100500
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
DECLARE $id  -- Int32
SET     $id = 100500

SELECT
	p.ParentID
FROM
	Parent p
WHERE
	p.ParentID = CAST($id AS INTEGER)
LIMIT 1

-- DuckDB
DECLARE $ParentID  -- Int32
SET     $ParentID = 100500
DECLARE $id  -- Int32
SET     $id = 100500

UPDATE
	Parent
SET
	Value1 = CAST($ParentID AS INTEGER)
WHERE
	Parent.ParentID = CAST($id AS INTEGER) AND (
		SELECT
			COUNT(*)
		FROM
			Parent p
		WHERE
			p.ParentID = CAST($id AS INTEGER)
	) > 0

