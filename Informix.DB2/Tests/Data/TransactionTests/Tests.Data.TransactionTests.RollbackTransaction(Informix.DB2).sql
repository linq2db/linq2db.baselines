-- Informix.DB2 Informix
DECLARE @ParentID Integer(4) -- Int32
SET     @ParentID = 1010
DECLARE @Value1 Integer(4) -- Int32
SET     @Value1 = 1010

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

UPDATE
	Parent t
SET
	Value1 = 1012
WHERE
	t.ParentID = 1010

RollbackTransaction
-- Informix.DB2 Informix

SELECT FIRST 1
	t.ParentID,
	t.Value1
FROM
	Parent t
WHERE
	t.ParentID = 1010

