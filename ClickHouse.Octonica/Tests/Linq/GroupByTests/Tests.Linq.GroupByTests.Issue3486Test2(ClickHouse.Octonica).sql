-- ClickHouse.Octonica ClickHouse

SELECT
	gr.FirstName,
	gr.LastName,
	sum(gr.PersonID)
FROM
	Person gr
GROUP BY
	gr.FirstName,
	gr.LastName

