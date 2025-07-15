BeforeExecute
-- Informix.DB2 Informix

SELECT
	gr.FirstName,
	gr.LastName,
	SUM(gr.PersonID)
FROM
	Person gr
GROUP BY
	gr.FirstName,
	gr.LastName

