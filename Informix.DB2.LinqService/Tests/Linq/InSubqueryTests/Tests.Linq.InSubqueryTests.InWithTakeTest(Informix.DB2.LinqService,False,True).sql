BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	c_1.ParentID,
	c_1.ChildID
FROM
	Child c_1
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT FIRST 100
					v.ParentID
				FROM
					Parent v
			) t1
		WHERE
			c_1.ParentID = t1.ParentID
	)

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	t1.ParentID,
	t1.ChildID
FROM
	Child t1

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

