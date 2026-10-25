-- YDB Ydb
DECLARE $id Int32
SET     $id = 30
DECLARE $id_1 Int32
SET     $id_1 = 40

$CTE_1 = 	SELECT
		c_1.ChildID as ChildID
	FROM
		Child c_1
	WHERE
		c_1.ChildID > $id
;
$CTE_2 = 	SELECT
		c_2.ChildID as ChildID
	FROM
		Child c_2
	WHERE
		c_2.ChildID > $id_1
;

SELECT
	t1.ChildID as ChildID
FROM
	$CTE_1 t1
UNION ALL
SELECT
	t2.ChildID as ChildID
FROM
	$CTE_2 t2

-- YDB Ydb
DECLARE $id Int32
SET     $id = 20
DECLARE $id_1 Int32
SET     $id_1 = 50

$CTE_1 = 	SELECT
		c_1.ChildID as ChildID
	FROM
		Child c_1
	WHERE
		c_1.ChildID > $id
;
$CTE_2 = 	SELECT
		c_2.ChildID as ChildID
	FROM
		Child c_2
	WHERE
		c_2.ChildID > $id_1
;

SELECT
	t1.ChildID as ChildID
FROM
	$CTE_1 t1
UNION ALL
SELECT
	t2.ChildID as ChildID
FROM
	$CTE_2 t2

