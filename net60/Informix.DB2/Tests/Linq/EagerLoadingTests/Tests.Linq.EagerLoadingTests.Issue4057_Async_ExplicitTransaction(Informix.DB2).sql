BeforeExecute
BeginTransaction
BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	lw_Parent.ParentID,
	detail.ParentID,
	detail.ChildID
FROM
	(
		SELECT DISTINCT
			t1.ParentID
		FROM
			(
				SELECT FIRST 1
					x.ParentID
				FROM
					Parent x
				WHERE
					x.ParentID = 3
			) t1
	) lw_Parent
		INNER JOIN Child detail ON lw_Parent.ParentID = detail.ParentID

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT FIRST 1
	x.ParentID,
	x.Value1
FROM
	Parent x
WHERE
	x.ParentID = 3

BeforeExecute
DisposeTransaction
BeforeExecute
BeginTransaction
BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	lw_Parent.ParentID,
	detail.ParentID,
	detail.ChildID
FROM
	(
		SELECT DISTINCT
			t1.ParentID
		FROM
			(
				SELECT FIRST 1
					x.ParentID
				FROM
					Parent x
				WHERE
					x.ParentID = 3
			) t1
	) lw_Parent
		INNER JOIN Child detail ON lw_Parent.ParentID = detail.ParentID

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT FIRST 1
	x.ParentID,
	x.Value1
FROM
	Parent x
WHERE
	x.ParentID = 3

BeforeExecute
DisposeTransaction
BeforeExecute
BeginTransaction
BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	lw_Parent.ParentID,
	detail.ParentID,
	detail.ChildID
FROM
	(
		SELECT DISTINCT
			t1.ParentID
		FROM
			(
				SELECT FIRST 1
					x.ParentID
				FROM
					Parent x
				WHERE
					x.ParentID = 3
			) t1
	) lw_Parent
		INNER JOIN Child detail ON lw_Parent.ParentID = detail.ParentID

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT FIRST 1
	x.ParentID,
	x.Value1
FROM
	Parent x
WHERE
	x.ParentID = 3

BeforeExecute
DisposeTransaction
