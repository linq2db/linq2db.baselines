-- YDB Ydb
DECLARE $ParentID Int32
SET     $ParentID = 1

$CTE_1 = 	SELECT
		p.ParentID as ParentID
	FROM
		Parent p
	WHERE
		p.ParentID = 1
;

SELECT
	CASE
		WHEN $ParentID IN (
			SELECT
				t1.ParentID
			FROM
				$CTE_1 t1
		)
			THEN true
		ELSE false
	END as c1

-- YDB Ydb
DECLARE $ParentID Int32
SET     $ParentID = 2

$CTE_1 = 	SELECT
		p.ParentID as ParentID
	FROM
		Parent p
	WHERE
		p.ParentID = 1
;

SELECT
	CASE
		WHEN $ParentID IN (
			SELECT
				t1.ParentID
			FROM
				$CTE_1 t1
		)
			THEN true
		ELSE false
	END as c1

