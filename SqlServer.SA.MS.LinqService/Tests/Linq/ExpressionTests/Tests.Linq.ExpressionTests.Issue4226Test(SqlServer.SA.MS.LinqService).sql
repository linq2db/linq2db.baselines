BeforeExecute
-- SqlServer.SA.MS SqlServer.2019 (asynchronously)
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
-- SqlServer.SA.MS SqlServer.2019 (asynchronously)

SELECT TOP (2)
	[e].[Id],
	[e].[Date]
FROM
	[Issue4226Table] [e]
WHERE
	DatePart(month, [e].[Date]) = DatePart(month, DATETIME2FROMPARTS(2020, 2, 29, 0, 0, 0, 0, 7))

