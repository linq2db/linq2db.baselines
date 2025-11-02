-- SqlServer.2005.MS SqlServer.2005
DECLARE @Date DateTime
SET     @Date = CAST('2021-01-01T00:00:00.000' AS DATETIME)

INSERT INTO [DateOnlyTable]
(
	[Date]
)
VALUES
(
	@Date
)

-- SqlServer.2005.MS SqlServer.2005

SELECT TOP (2)
	[t1].[Date]
FROM
	[DateOnlyTable] [t1]

