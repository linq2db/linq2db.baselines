BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	e.Id,
	e.RecSrc,
	e.Value
FROM
	Entry e
WHERE
	(e.RecSrc, e.Value) IN (('default', 2007), ('other', 2008))

