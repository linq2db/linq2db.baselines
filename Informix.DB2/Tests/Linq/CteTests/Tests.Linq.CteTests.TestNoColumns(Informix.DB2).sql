BeforeExecute
-- Informix.DB2 Informix

SELECT
	COUNT(*)
FROM
	Child t1

BeforeExecute
-- Informix.DB2 Informix

WITH CTE1_ (c1)
AS
(
	SELECT
		1
	FROM
		Child t1
)
SELECT
	COUNT(*)
FROM
	CTE1_ t2

BeforeExecute
-- Informix.DB2 Informix

WITH CTE1_ (c1)
AS
(
	SELECT
		1
	FROM
		Child c_1
)
SELECT
	COUNT(*)
FROM
	CTE1_ t1

BeforeExecute
-- Informix.DB2 Informix

WITH CTE1_ (c1)
AS
(
	SELECT
		1
	FROM
		Child c_1
)
SELECT
	EXISTS(
		SELECT
			*
		FROM
			CTE1_ t1
	)
FROM table(set{1})

