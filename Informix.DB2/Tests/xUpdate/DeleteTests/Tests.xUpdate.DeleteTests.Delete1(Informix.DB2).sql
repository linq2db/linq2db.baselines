-- Informix.DB2 Informix
DECLARE @ParentID Integer(4) -- Int32
SET     @ParentID = 1001

DELETE FROM
	Parent
WHERE
	Parent.ParentID = @ParentID

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

-- Informix.DB2 Informix
DECLARE @ParentID Integer(4) -- Int32
SET     @ParentID = 1001

SELECT
	COUNT(*)
FROM
	Parent p
WHERE
	p.ParentID = @ParentID

-- Informix.DB2 Informix
DECLARE @ParentID Integer(4) -- Int32
SET     @ParentID = 1001

DELETE FROM
	Parent
WHERE
	Parent.ParentID = @ParentID

-- Informix.DB2 Informix
DECLARE @ParentID Integer(4) -- Int32
SET     @ParentID = 1001

SELECT
	COUNT(*)
FROM
	Parent p
WHERE
	p.ParentID = @ParentID

