-- DuckDB
DECLARE $ParentID  -- Int32
SET     $ParentID = 1111

DELETE FROM
	Parent p
WHERE
	p.ParentID = CAST($ParentID AS INTEGER)

-- DuckDB
DECLARE $ParentID  -- Int32
SET     $ParentID = 2111

DELETE FROM
	Parent p
WHERE
	p.ParentID = CAST($ParentID AS INTEGER)

-- DuckDB
DECLARE $ParentID  -- Int32
SET     $ParentID = 3111

DELETE FROM
	Parent p
WHERE
	p.ParentID = CAST($ParentID AS INTEGER)

-- DuckDB
DECLARE $ParentID  -- Int32
SET     $ParentID = 4111

DELETE FROM
	Parent p
WHERE
	p.ParentID = CAST($ParentID AS INTEGER)

INSERT BULK Parent(ParentID, Value1)

CommitTransaction
-- DuckDB
DECLARE $ParentID  -- Int32
SET     $ParentID = 1111

DELETE FROM
	Parent p
WHERE
	p.ParentID = CAST($ParentID AS INTEGER)

-- DuckDB
DECLARE $ParentID  -- Int32
SET     $ParentID = 2111

DELETE FROM
	Parent p
WHERE
	p.ParentID = CAST($ParentID AS INTEGER)

-- DuckDB
DECLARE $ParentID  -- Int32
SET     $ParentID = 3111

DELETE FROM
	Parent p
WHERE
	p.ParentID = CAST($ParentID AS INTEGER)

-- DuckDB
DECLARE $ParentID  -- Int32
SET     $ParentID = 4111

DELETE FROM
	Parent p
WHERE
	p.ParentID = CAST($ParentID AS INTEGER)

