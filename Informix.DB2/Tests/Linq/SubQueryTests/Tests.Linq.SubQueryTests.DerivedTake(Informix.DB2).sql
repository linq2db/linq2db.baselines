BeforeExecute
-- Informix.DB2 Informix

SELECT
	t2.ParentID,
	t2.Value1
FROM
	(
		SELECT FIRST 1
			t1.ParentID,
			t1.Value1
		FROM
			Parent t1
	) t2

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

