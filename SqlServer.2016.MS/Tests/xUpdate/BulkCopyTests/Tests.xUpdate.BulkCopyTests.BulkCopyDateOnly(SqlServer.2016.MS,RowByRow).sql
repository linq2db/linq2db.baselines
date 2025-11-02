-- SqlServer.2016.MS SqlServer.2016
DECLARE @Date Date
SET     @Date = DATETIME2FROMPARTS(2021, 1, 1, 0, 0, 0, 0, 7)

INSERT INTO [DateOnlyTable]
(
	[Date]
)
VALUES
(
	@Date
)

-- SqlServer.2016.MS SqlServer.2016

SELECT TOP (2)
	[t1].[Date]
FROM
	[DateOnlyTable] [t1]

