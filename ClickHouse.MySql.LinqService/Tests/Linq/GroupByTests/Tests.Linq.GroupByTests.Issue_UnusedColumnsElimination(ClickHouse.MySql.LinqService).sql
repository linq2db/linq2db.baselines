BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	COUNT(*)
FROM
	(
		SELECT
			r.PersonID as PersonID
		FROM
			Person r
		GROUP BY
			r.PersonID,
			r.PersonID
	) t1

