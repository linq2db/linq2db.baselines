BeforeExecute
-- Informix.DB2 Informix

DELETE FROM
	Parent

BeforeExecute
-- Informix.DB2 Informix

DELETE FROM
	Child

BeforeExecute
-- Informix.DB2 Informix

DELETE FROM
	GrandChild

BeforeExecute
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

BeforeExecute
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

BeforeExecute
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

BeforeExecute
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

BeforeExecute
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

BeforeExecute
-- Informix.DB2 Informix

MERGE INTO GrandChild Target
USING (
	SELECT
		t1.ParentID + t2.ChildID as source_field0,
		t1.ParentID as LeftId,
		t2.ChildID as RightId
	FROM
		Parent t1,
		Child t2
) Source
(
	source_field0,
	LeftId,
	RightId
)
ON (Target.GrandChildID = Source.source_field0)

WHEN NOT MATCHED THEN
INSERT
(
	GrandChildID,
	ParentID,
	ChildID
)
VALUES
(
	Source.source_field0,
	Source.LeftId,
	Source.RightId
)

