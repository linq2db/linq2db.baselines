-- Informix.DB2 Informix

DELETE FROM
	Parent

-- Informix.DB2 Informix

DELETE FROM
	Child

-- Informix.DB2 Informix

DELETE FROM
	GrandChild

-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1

INSERT INTO Parent
(
	ParentID
)
VALUES
(
	@Id
)

-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2

INSERT INTO Parent
(
	ParentID
)
VALUES
(
	@Id
)

-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 10

INSERT INTO Child
(
	ChildID
)
VALUES
(
	@Id
)

-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 20

INSERT INTO Child
(
	ChildID
)
VALUES
(
	@Id
)

-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 11
DECLARE @LeftId Integer(4) -- Int32
SET     @LeftId = 100
DECLARE @RightId Integer(4) -- Int32
SET     @RightId = 200

INSERT INTO GrandChild
(
	GrandChildID,
	ParentID,
	ChildID
)
VALUES
(
	@Id,
	@LeftId,
	@RightId
)

-- Informix.DB2 Informix

MERGE INTO GrandChild Target
USING (
	SELECT
		r.ParentID + t2.ChildID as ResultId,
		r.ParentID as LeftId,
		t2.ChildID as RightId
	FROM
		Parent r
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

-- Informix.DB2 Informix

SELECT
	t1.GrandChildID,
	t1.ParentID,
	t1.ChildID
FROM
	GrandChild t1
ORDER BY
	t1.GrandChildID

