BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- Informix.DB2 Informix

SELECT FIRST 1
	t1.ParentID,
	t1.ChildID
FROM
	Child t1

BeforeExecute
DisposeTransaction
BeforeExecute
-- Informix.DB2 Informix

SELECT
	1
FROM
	Parent p

