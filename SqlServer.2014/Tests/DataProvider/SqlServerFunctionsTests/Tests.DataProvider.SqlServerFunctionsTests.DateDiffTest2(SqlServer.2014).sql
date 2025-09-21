BeforeExecute
-- SqlServer.2014

SELECT
	DATEDIFF(Month, DATETIME2FROMPARTS(2020, 2, 29, 0, 0, 0, 0, 7), DateAdd(year, 1, DATETIME2FROMPARTS(2020, 2, 29, 0, 0, 0, 0, 7)))

