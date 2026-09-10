-- YDB Ydb
DECLARE $group Int32
SET     $group = 7

SELECT
	p.Id as Id,
	FIRST_VALUE(p.Id) OVER (ORDER BY p.`Order` DESC) as c1
FROM
	`Position` p
WHERE
	p.`Group` = $group

