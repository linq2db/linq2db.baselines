BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	gr.FirstName,
	gr.LastName,
	sumOrNull(gr.PersonID)
FROM
	Person gr
GROUP BY
	gr.FirstName,
	gr.LastName

