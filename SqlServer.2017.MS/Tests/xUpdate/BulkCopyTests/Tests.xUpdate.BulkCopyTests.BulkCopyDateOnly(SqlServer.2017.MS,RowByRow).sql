-- SqlServer.2017.MS SqlServer.2017
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

-- SqlServer.2017.MS SqlServer.2017

SELECT TOP (2)
	[t1].[Date]
FROM
	[DateOnlyTable] [t1]

