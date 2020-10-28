BeforeExecute
-- Informix.DB2 Informix (asynchronously)

DELETE FROM
	Parent
WHERE
	Parent.ParentID > 1000

BeforeExecute
-- Informix.DB2 Informix (asynchronously)
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
-- Informix.DB2 Informix (asynchronously)
DECLARE @ParentID Integer(4) -- Int32
SET     @ParentID = 1001

SELECT
	Count(*)
FROM
	Parent p
WHERE
	p.ParentID = @ParentID

BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @ParentID Integer(4) -- Int32
SET     @ParentID = 1001

UPDATE
	Parent
SET
	Parent.ParentID = Parent.ParentID + 1
WHERE
	Parent.ParentID = @ParentID

BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @p1 Integer(4) -- Int32
SET     @p1 = 1002

SELECT
	Count(*)
FROM
	Parent p
WHERE
	p.ParentID = @p1

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

DELETE FROM
	Child
WHERE
	Child.ChildID > 1000

