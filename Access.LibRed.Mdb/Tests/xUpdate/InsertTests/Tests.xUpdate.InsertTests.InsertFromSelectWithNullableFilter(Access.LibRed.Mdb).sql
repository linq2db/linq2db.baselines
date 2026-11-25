-- Access.LibRed.Mdb Access.LibRed AccessLibRed
INSERT INTO [InsertSelectAssociationRow]
(
	[Pk],
	[ID],
	[intDataType]
)
SELECT
	[t2].[ID],
	123 as [c1],
	[t2].[ID] as [ID_1]
FROM
	(
		SELECT DISTINCT
			[a_Association].[ID]
		FROM
			[InsertSelectAssociationRow] [t1]
				INNER JOIN [InsertSelectAssociationRow] [a_Association] ON ([t1].[ID] = [a_Association].[intDataType])
		WHERE
			1 = 0
	) [t2]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @p  -- Int16
SET     @p = 1234

INSERT INTO [InsertSelectAssociationRow]
(
	[Pk],
	[ID],
	[intDataType]
)
SELECT
	[t2].[ID],
	123 as [c1],
	[t2].[ID] as [ID_1]
FROM
	(
		SELECT DISTINCT
			[a_Association].[ID]
		FROM
			[InsertSelectAssociationRow] [t1]
				INNER JOIN [InsertSelectAssociationRow] [a_Association] ON ([t1].[ID] = [a_Association].[intDataType])
		WHERE
			[t1].[ID] = @p
	) [t2]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[t1].[Pk],
	[t1].[ID],
	[t1].[intDataType]
FROM
	[InsertSelectAssociationRow] [t1]

