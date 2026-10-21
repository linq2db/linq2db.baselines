-- YDB Ydb
$CTE_1 = 	SELECT
		p.ParentID as ParentID,
		p.Value1 as Info_Value_Value
	FROM
		Parent p
;

SELECT
	m_1.ParentID as ParentID,
	m_1.Info_Value_Value as Value_1
FROM
	$CTE_1 m_1

