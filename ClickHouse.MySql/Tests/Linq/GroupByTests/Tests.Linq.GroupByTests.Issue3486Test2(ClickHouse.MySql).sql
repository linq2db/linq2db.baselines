-- ClickHouse.MySql ClickHouse

SELECT
	gr.FirstName,
	gr.LastName,
	SUM(gr.PersonID)
FROM
	Person gr
GROUP BY
	gr.FirstName,
	gr.LastName

