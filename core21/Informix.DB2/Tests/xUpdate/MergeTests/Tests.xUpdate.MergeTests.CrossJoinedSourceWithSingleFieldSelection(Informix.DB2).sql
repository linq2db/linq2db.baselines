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
		t2.ChildID as Id
	FROM
		Parent t1,
		Child t2
) Source
(
	Id
)
ON (Target.GrandChildID = Source.Id)

WHEN NOT MATCHED THEN
INSERT
(
	ChildID
)
VALUES
(
	Source.Id
)

BeforeExecute
-- Informix.DB2 Informix

SELECT 
	t1.GrandChildID, 
	t1.ParentID, 
	t1.ChildID
FROM
	GrandChild t1

