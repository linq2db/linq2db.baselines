-- YDB Ydb
DECLARE $p Int32
SET     $p = 1

$CTE_1 = 	SELECT
		c_1.ParentID as ParentID
	FROM
		Child c_1
;

SELECT
	CASE
		WHEN $p IN (
			SELECT
				t1.ParentID
			FROM
				$CTE_1 t1
		)
			THEN true
		ELSE false
	END as c1

-- YDB Ydb
DECLARE $p Int32
SET     $p = -1

$CTE_1 = 	SELECT
		c_1.ParentID as ParentID
	FROM
		Child c_1
;

SELECT
	CASE
		WHEN $p IN (
			SELECT
				t1.ParentID
			FROM
				$CTE_1 t1
		)
			THEN true
		ELSE false
	END as c1

