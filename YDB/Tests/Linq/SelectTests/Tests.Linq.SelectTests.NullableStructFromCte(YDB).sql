-- YDB Ydb
$CTE_1 = 	SELECT
		p.ParentID as ParentID,
		p.Value1 as Value_1
	FROM
		Parent p
;

SELECT
	m_1.ParentID as ParentID,
	m_1.Value_1 as Value_1
FROM
	$CTE_1 m_1

