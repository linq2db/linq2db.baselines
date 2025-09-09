BeforeExecute
-- SqlServer.2008.MS SqlServer.2008 (asynchronously)
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Date NVarChar(11) -- String
SET     @Date = N'02-29-2020'

INSERT INTO [Issue4226Table]
(
	[Id],
	[Date]
)
VALUES
(
	@Id,
	@Date
)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008 (asynchronously)

SELECT TOP (2)
	[e].[Id],
	[e].[Date]
FROM
	[Issue4226Table] [e]
WHERE
	DatePart(month, [e].[Date]) = DatePart(month, CAST('2020-02-29T00:00:00.0000000' AS DATETIME2))

