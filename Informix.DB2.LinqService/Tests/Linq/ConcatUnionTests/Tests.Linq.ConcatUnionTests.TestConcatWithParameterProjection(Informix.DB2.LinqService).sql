BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @someValue Integer(4) -- Int32
SET     @someValue = 3

SELECT
	@someValue::Int,
	c_1.ChildID
FROM
	Child c_1
WHERE
	c_1.ChildID <= @someValue
UNION ALL
SELECT
	@someValue::Int,
	c_2.ChildID
FROM
	Child c_2
WHERE
	c_2.ChildID > @someValue

