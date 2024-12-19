BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [SomeTable]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

IF (OBJECT_ID(N'[SomeTable]', N'U') IS NULL)
	CREATE TABLE [SomeTable]
	(
		[ClassProp] Bit NOT NULL,
		[Interface] Bit NOT NULL
	)

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

INSERT INTO [SomeTable]
(
	[ClassProp],
	[Interface]
)
VALUES
(
	1,
	0
)

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT TOP (2)
	[t1].[ClassProp],
	[t1].[Interface]
FROM
	[SomeTable] [t1]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [SomeTable]

