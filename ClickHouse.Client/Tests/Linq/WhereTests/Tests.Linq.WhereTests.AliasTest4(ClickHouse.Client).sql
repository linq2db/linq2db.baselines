BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	`тбл`.ParentID,
	`тбл`.Value1
FROM
	Parent `тбл`
WHERE
	`тбл`.ParentID = toInt32(3)

