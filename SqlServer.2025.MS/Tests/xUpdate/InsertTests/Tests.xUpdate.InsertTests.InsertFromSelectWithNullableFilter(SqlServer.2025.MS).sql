-- SqlServer.2025.MS SqlServer.2025
INSERT INTO [InsertSelectAssociationRow]
(
	[Pk],
	[ID],
	[intDataType]
)
SELECT
	[t2].[ID],
	123,
	[t2].[ID]
FROM
	(
		SELECT DISTINCT
			[a_Association].[ID]
		FROM
			[InsertSelectAssociationRow] [t1]
				INNER JOIN [InsertSelectAssociationRow] [a_Association] ON CAST([t1].[ID] AS Int) = [a_Association].[intDataType]
		WHERE
			1 = 0
	) [t2]

-- SqlServer.2025.MS SqlServer.2025
DECLARE @p SmallInt -- Int16
SET     @p = 1234

INSERT INTO [InsertSelectAssociationRow]
(
	[Pk],
	[ID],
	[intDataType]
)
SELECT
	[t2].[ID],
	123,
	[t2].[ID]
FROM
	(
		SELECT DISTINCT
			[a_Association].[ID]
		FROM
			[InsertSelectAssociationRow] [t1]
				INNER JOIN [InsertSelectAssociationRow] [a_Association] ON CAST([t1].[ID] AS Int) = [a_Association].[intDataType]
		WHERE
			[t1].[ID] = @p
	) [t2]

-- SqlServer.2025.MS SqlServer.2025
SELECT
	[t1].[Pk],
	[t1].[ID],
	[t1].[intDataType]
FROM
	[InsertSelectAssociationRow] [t1]

