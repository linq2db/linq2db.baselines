-- Informix.DB2 Informix
DECLARE @ParentID Integer(4) -- Int32
SET     @ParentID = 1111

DELETE FROM
	Parent
WHERE
	Parent.ParentID = @ParentID

-- Informix.DB2 Informix
DECLARE @ParentID Integer(4) -- Int32
SET     @ParentID = 2111

DELETE FROM
	Parent
WHERE
	Parent.ParentID = @ParentID

-- Informix.DB2 Informix
DECLARE @ParentID Integer(4) -- Int32
SET     @ParentID = 3111

DELETE FROM
	Parent
WHERE
	Parent.ParentID = @ParentID

-- Informix.DB2 Informix
DECLARE @ParentID Integer(4) -- Int32
SET     @ParentID = 4111

DELETE FROM
	Parent
WHERE
	Parent.ParentID = @ParentID

-- Informix.DB2 Informix
DECLARE @ParentID Integer(4) -- Int32
SET     @ParentID = 1111
DECLARE @Value1 Integer(4) -- Int32
SET     @Value1 = 1111

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
SET     @ParentID = 2111
DECLARE @Value1 Integer(4) -- Int32
SET     @Value1 = 2111

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
SET     @ParentID = 3111
DECLARE @Value1 Integer(4) -- Int32
SET     @Value1 = 3111

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
SET     @ParentID = 4111
DECLARE @Value1 Integer(4) -- Int32
SET     @Value1 = 4111

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

CommitTransaction
-- Informix.DB2 Informix
DECLARE @ParentID Integer(4) -- Int32
SET     @ParentID = 1111

DELETE FROM
	Parent
WHERE
	Parent.ParentID = @ParentID

-- Informix.DB2 Informix
DECLARE @ParentID Integer(4) -- Int32
SET     @ParentID = 2111

DELETE FROM
	Parent
WHERE
	Parent.ParentID = @ParentID

-- Informix.DB2 Informix
DECLARE @ParentID Integer(4) -- Int32
SET     @ParentID = 3111

DELETE FROM
	Parent
WHERE
	Parent.ParentID = @ParentID

-- Informix.DB2 Informix
DECLARE @ParentID Integer(4) -- Int32
SET     @ParentID = 4111

DELETE FROM
	Parent
WHERE
	Parent.ParentID = @ParentID

