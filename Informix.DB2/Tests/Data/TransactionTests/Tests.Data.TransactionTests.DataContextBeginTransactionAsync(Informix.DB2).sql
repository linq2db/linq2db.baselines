-- Informix.DB2 Informix

SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

BeginTransactionAsync
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

