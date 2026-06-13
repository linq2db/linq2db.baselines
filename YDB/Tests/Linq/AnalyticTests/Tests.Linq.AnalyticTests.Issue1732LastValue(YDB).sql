-- YDB Ydb
DECLARE $group Int32
SET     $group = 7

SELECT
	p.Id as Id,
	LAST_VALUE(p.Id) OVER(ORDER BY p.`Order`) as PreviousId
FROM
	`Position` p
WHERE
	p.`Group` = $group

