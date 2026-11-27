-- SqlServer.2005
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Date NVarChar(11) -- String
SET     @Date = N'02-29-2020'

INSERT INTO [ConvertedDateTable]
(
	[Id],
	[Date]
)
VALUES
(
	@Id,
	@Date
)

-- SqlServer.2005
SELECT TOP (2)
	[e].[Id],
	[e].[Date]
FROM
	[ConvertedDateTable] [e]
WHERE
	DatePart(month, [e].[Date]) = DatePart(month, CAST('2020-02-29T00:00:00.000' AS DATETIME))

