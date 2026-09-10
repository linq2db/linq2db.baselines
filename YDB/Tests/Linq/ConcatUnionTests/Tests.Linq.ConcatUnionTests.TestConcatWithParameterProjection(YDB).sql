-- YDB Ydb
DECLARE $someValue Int32
SET     $someValue = 3

SELECT
	Unwrap(CAST($someValue AS Int32)) as Value_1,
	c_1.ChildID as ChildID
FROM
	Child c_1
WHERE
	c_1.ChildID <= $someValue
UNION ALL
SELECT
	Unwrap(CAST($someValue AS Int32)) as Value_1,
	c_2.ChildID as ChildID
FROM
	Child c_2
WHERE
	c_2.ChildID > $someValue

