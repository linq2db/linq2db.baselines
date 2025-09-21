BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	DATEDIFF_BIG(Month, DATETIME2FROMPARTS(2020, 2, 29, 0, 0, 0, 0, 7), DateAdd(year, 1, DATETIME2FROMPARTS(2020, 2, 29, 0, 0, 0, 0, 7)))

