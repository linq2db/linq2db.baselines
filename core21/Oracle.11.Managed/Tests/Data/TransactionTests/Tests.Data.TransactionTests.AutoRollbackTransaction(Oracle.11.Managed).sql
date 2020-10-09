BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @ParentID Int32
SET     @ParentID = 1010
DECLARE @Value1 Int32
SET     @Value1 = 1010

INSERT INTO Parent
(
	ParentID,
	Value1
)
VALUES
(
	:ParentID,
	:Value1
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

UPDATE
	Parent
SET
	Parent.Value1 = 1012
WHERE
	Parent.ParentID = 1010

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @take Int32
SET     @take = 1

SELECT 
	t.ParentID, 
	t.Value1
FROM
	Parent t
WHERE
	t.ParentID = 1010 AND ROWNUM <= :take

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DELETE FROM
	Parent t1
WHERE
	t1.ParentID >= 1000

