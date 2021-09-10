﻿BeforeExecute
-- SqlServer.2019 SqlServer.2017

DROP TABLE IF EXISTS [WhereWithBool]

BeforeExecute
-- SqlServer.2019 SqlServer.2017

IF (OBJECT_ID(N'[WhereWithBool]', N'U') IS NULL)
	CREATE TABLE [WhereWithBool]
	(
		[Id]        Int NOT NULL,
		[BoolValue] Bit NOT NULL,

		CONSTRAINT [PK_WhereWithBool] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2019 SqlServer.2017

INSERT INTO [WhereWithBool]
(
	[Id],
	[BoolValue]
)
VALUES
(1,1)

BeforeExecute
-- SqlServer.2019 SqlServer.2017

SELECT
	[t].[Id],
	[t].[BoolValue]
FROM
	[WhereWithBool] [t]
WHERE
	(
		SELECT
			[x].[BoolValue]
		FROM
			[WhereWithBool] [x]
		WHERE
			[x].[Id] = 1
	) = 1

BeforeExecute
-- SqlServer.2019 SqlServer.2017

DROP TABLE IF EXISTS [WhereWithBool]

