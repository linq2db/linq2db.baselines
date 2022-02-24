﻿BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [WhereWithString]

BeforeExecute
-- SqlServer.2017

IF (OBJECT_ID(N'[WhereWithString]', N'U') IS NULL)
	CREATE TABLE [WhereWithString]
	(
		[Id]          Int            NOT NULL,
		[StringValue] NVarChar(4000)     NULL,

		CONSTRAINT [PK_WhereWithString] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2017
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @StringValue NVarChar(4000) -- String
SET     @StringValue = N'Str1'

INSERT INTO [WhereWithString]
(
	[Id],
	[StringValue]
)
VALUES
(
	@Id,
	@StringValue
)

BeforeExecute
-- SqlServer.2017

SELECT
	[x].[Id],
	[x].[StringValue]
FROM
	[WhereWithString] [x]

BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [WhereWithString]

