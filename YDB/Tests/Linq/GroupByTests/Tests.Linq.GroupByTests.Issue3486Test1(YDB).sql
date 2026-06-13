-- YDB Ydb

SELECT
	gr.FirstName as FirstName,
	gr.LastName as LastName,
	SUM(gr.PersonID) as Sum_1
FROM
	Person gr
GROUP BY
	gr.FirstName,
	gr.LastName

