-- YDB Ydb

$CTE_1 = 	SELECT
		p.ParentID as ParentID
	FROM
		Parent p
	UNION ALL
	SELECT
		p_1.ParentID as ParentID
	FROM
		Parent p_1
;

SELECT
	EXISTS(
		SELECT
			1
		FROM
			$CTE_1 t1
	) as c1

