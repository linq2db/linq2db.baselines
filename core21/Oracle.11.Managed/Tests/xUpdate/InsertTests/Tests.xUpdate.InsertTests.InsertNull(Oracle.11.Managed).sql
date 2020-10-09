BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DELETE FROM
	Parent t1
WHERE
	t1.ParentID = 1001

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @ParentID Int32
SET     @ParentID = 1001
DECLARE @Value1 Int32
SET     @Value1 = NULL

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

SELECT 
	Count(*)
FROM
	Parent p
WHERE
	p.ParentID = 1001

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DELETE FROM
	Parent t1
WHERE
	t1.Value1 = 1001

