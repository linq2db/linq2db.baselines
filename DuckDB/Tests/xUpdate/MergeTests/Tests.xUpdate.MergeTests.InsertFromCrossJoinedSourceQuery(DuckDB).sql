-- DuckDB

DELETE FROM
	Parent t1

-- DuckDB

DELETE FROM
	Child t1

-- DuckDB

DELETE FROM
	GrandChild t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1

INSERT INTO Parent
(
	ParentID
)
VALUES
(
	CAST($Id AS INTEGER)
)

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 2

INSERT INTO Parent
(
	ParentID
)
VALUES
(
	CAST($Id AS INTEGER)
)

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 10

INSERT INTO Child
(
	ChildID
)
VALUES
(
	CAST($Id AS INTEGER)
)

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 20

INSERT INTO Child
(
	ChildID
)
VALUES
(
	CAST($Id AS INTEGER)
)

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 11
DECLARE $LeftId  -- Int32
SET     $LeftId = 100
DECLARE $RightId  -- Int32
SET     $RightId = 200

INSERT INTO GrandChild
(
	GrandChildID,
	ParentID,
	ChildID
)
VALUES
(
	CAST($Id AS INTEGER),
	CAST($LeftId AS INTEGER),
	CAST($RightId AS INTEGER)
)

-- DuckDB

MERGE INTO GrandChild Target
USING (
	SELECT
		t1.ParentID + t2.ChildID as ResultId,
		t1.ParentID as LeftId,
		t2.ChildID as RightId
	FROM
		Parent t1
			CROSS JOIN Child t2
) Source
(
	ResultId,
	LeftId,
	RightId
)
ON (Target.GrandChildID = Source.ResultId)

WHEN NOT MATCHED THEN
INSERT
(
	GrandChildID,
	ParentID,
	ChildID
)
VALUES
(
	Source.ResultId,
	Source.LeftId,
	Source.RightId
)

-- DuckDB

SELECT
	t1.GrandChildID,
	t1.ParentID,
	t1.ChildID
FROM
	GrandChild t1
ORDER BY
	t1.GrandChildID

