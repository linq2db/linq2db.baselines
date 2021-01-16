BeforeExecute
-- Informix.DB2 Informix

DELETE FROM
	Parent
WHERE
	Parent.ParentID > 1000

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Value1 Integer(4) -- Int32
SET     @Value1 = 2

INSERT INTO Parent
(
	ParentID,
	Value1
)
VALUES
(
	1001,
	@Value1
)

BeforeExecute
-- Informix.DB2 Informix

DELETE FROM
	Parent
WHERE
	Parent.ParentID > 1000

