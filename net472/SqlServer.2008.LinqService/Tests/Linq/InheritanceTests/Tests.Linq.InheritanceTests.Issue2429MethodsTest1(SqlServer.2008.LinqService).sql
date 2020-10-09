BeforeExecute
-- SqlServer.2008

CREATE TABLE [BaseTable]
(
	[Value] Int NOT NULL,
	[Id]    Int NOT NULL,

	CONSTRAINT [PK_BaseTable] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- SqlServer.2008
DECLARE @BaseValue Int -- Int32
SET     @BaseValue = 100
DECLARE @Id Int -- Int32
SET     @Id = 1

INSERT INTO [BaseTable]
(
	[Value],
	[Id]
)
VALUES
(
	@BaseValue,
	@Id
)

BeforeExecute
-- SqlServer.2008
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take) 
	[x].[Value], 
	[x].[Id]
FROM
	[BaseTable] [x]
WHERE
	[x].[Id] = 1

BeforeExecute
-- SqlServer.2008
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take) 
	[x].[Value], 
	[x].[Id]
FROM
	[BaseTable] [x]
WHERE
	[x].[Id] = 1 AND [x].[Value] = 100

BeforeExecute
-- SqlServer.2008

DROP TABLE [BaseTable]

