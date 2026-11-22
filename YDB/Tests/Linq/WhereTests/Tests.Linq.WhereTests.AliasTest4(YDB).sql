-- YDB Ydb
SELECT
	`тбл`.ParentID as ParentID,
	`тбл`.Value1 as Value1
FROM
	Parent `тбл`
WHERE
	`тбл`.ParentID = 3

