BeforeExecute
-- Informix.DB2 Informix

DELETE FROM
	Parent
WHERE
	Parent.ParentID > 1000

BeforeExecute
-- Informix.DB2 Informix
DECLARE @ParentID Integer(4) -- Int32
SET     @ParentID = 1001
DECLARE @Value1 Integer(4) -- Int32
SET     @Value1 = 1001

INSERT INTO Parent
(
	ParentID,
	Value1
)
VALUES
(
	@ParentID,
	@Value1
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Value1 Integer(4) -- Int32
SET     @Value1 = 1002
DECLARE @ParentID Integer(4) -- Int32
SET     @ParentID = 1001

UPDATE
	Parent
SET
	Parent.Value1 = @Value1
WHERE
	Parent.ParentID = @ParentID

BeforeExecute
-- Informix.DB2 Informix

DELETE FROM
	Child
WHERE
	Child.ChildID > 1000

