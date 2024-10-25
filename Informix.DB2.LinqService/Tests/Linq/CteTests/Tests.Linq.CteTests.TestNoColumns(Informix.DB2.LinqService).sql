BeforeExecute
-- Informix.DB2 Informix

SELECT
	COUNT(*)
FROM
	Child t1

BeforeExecute
-- Informix.DB2 Informix

WITH CTE1_ (ParentID, ChildID)
AS
(
	SELECT
		t1.ParentID,
		t1.ChildID
	FROM
		Child t1
)
SELECT
	COUNT(*)
FROM
	CTE1_ t2

BeforeExecute
-- Informix.DB2 Informix

WITH CTE1_ (C_ChildID)
AS
(
	SELECT
		c_1.ChildID
	FROM
		Child c_1
)
SELECT
	COUNT(*)
FROM
	CTE1_ t1

BeforeExecute
-- Informix.DB2 Informix

WITH CTE1_ AS
(
	SELECT
		*
	FROM
		Child c_1
)
SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				CTE1_ t1
		) THEN 't'
		ELSE 'f'
	END::BOOLEAN
FROM table(set{1})

