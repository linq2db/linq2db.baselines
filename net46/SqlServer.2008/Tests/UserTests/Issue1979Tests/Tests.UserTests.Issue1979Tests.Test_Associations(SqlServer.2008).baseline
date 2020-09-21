BeforeExecute
-- SqlServer.2008

CREATE TABLE [Tag]
(
	[Id]   BigInt         NOT NULL,
	[Name] NVarChar(4000)     NULL
)

BeforeExecute
-- SqlServer.2008

CREATE TABLE [Tagging]
(
	[Id]           BigInt         NOT NULL,
	[TagId]        Int            NOT NULL,
	[TaggableId]   Int            NOT NULL,
	[TaggableType] NVarChar(4000)     NULL,

	CONSTRAINT [PK_Tagging] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- SqlServer.2008

CREATE TABLE [Issue]
(
	[Id] Int NOT NULL,

	CONSTRAINT [PK_Issue] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- SqlServer.2008
DECLARE @take Int -- Int32
SET     @take = 1

SELECT
	[i].[Id]
FROM
	[Issue] [i]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[Tagging] [_1]
				OUTER APPLY (
					SELECT TOP (@take)
						[_].[Name]
					FROM
						[Tag] [_]
					WHERE
						Convert(BigInt, [_1].[TagId]) = [_].[Id]
				) [a_Tag]
		WHERE
			[_1].[TaggableType] = N'Issue' AND [i].[Id] = [_1].[TaggableId] AND
			[a_Tag].[Name] = N'Visu'
	)

BeforeExecute
-- SqlServer.2008

DROP TABLE [Issue]

BeforeExecute
-- SqlServer.2008

DROP TABLE [Tagging]

BeforeExecute
-- SqlServer.2008

DROP TABLE [Tag]

