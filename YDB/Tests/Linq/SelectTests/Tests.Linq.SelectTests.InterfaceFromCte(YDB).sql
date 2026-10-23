-- YDB Ydb
$CTE_1 = 	SELECT
		p.ParentID as Info_Id,
		p.Value1 as Value_1
	FROM
		Parent p
;

SELECT
	m_1.Info_Id as ParentID,
	m_1.Value_1 as Value_1
FROM
	$CTE_1 m_1
WHERE
	m_1.Info_Id > 2

