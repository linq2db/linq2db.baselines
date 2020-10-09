BeforeExecute
-- SqlServer.2014 SqlServer.2012

CREATE TABLE [SomeEntity]
(
	[Id]       Int            NOT NULL,
	[OwnerStr] NVarChar(4000)     NULL
)

BeforeExecute
-- SqlServer.2014 SqlServer.2012

INSERT INTO [SomeEntity]
(
	[Id],
	[OwnerStr]
)
VALUES
(1,N'Own_1'),
(2,N'Own_2'),
(3,N'Own_3'),
(4,N'Own_4'),
(5,N'Own_5'),
(6,N'Own_6'),
(7,N'Own_7'),
(8,N'Own_8'),
(9,N'Own_9'),
(10,N'Own_10')

BeforeExecute
-- SqlServer.2014 SqlServer.2012

CREATE TABLE [SomeOtherEntity]
(
	[Id]       Int            NOT NULL,
	[StrValue] NVarChar(4000)     NULL
)

BeforeExecute
-- SqlServer.2014 SqlServer.2012

INSERT INTO [SomeOtherEntity]
(
	[Id],
	[StrValue]
)
VALUES
(1,N'Str_1'),
(2,N'Str_2'),
(3,N'Str_3'),
(4,N'Str_4'),
(5,N'Str_5'),
(6,N'Str_6'),
(7,N'Str_7'),
(8,N'Str_8'),
(9,N'Str_9'),
(10,N'Str_10')

BeforeExecute
-- SqlServer.2014 SqlServer.2012
DECLARE @take Int -- Int32
SET     @take = 1

SELECT 
	[t1].[Id], 
	[t1].[OwnerStr], 
	[a_Other].[Id], 
	[a_Other].[StrValue], 
	[se_1].[Id], 
	[se_1].[StrValue]
FROM
	[SomeEntity] [t1]
		OUTER APPLY ( 
			SELECT TOP (@take) 
				[se].[Id], 
				[se].[StrValue]
			FROM
				[SomeOtherEntity] [se]
			WHERE
				[se].[Id] = [t1].[Id]
		) [a_Other]
		LEFT JOIN [SomeOtherEntity] [se_1] WITH (NOLOCK) ON [se_1].[Id] = [t1].[Id]

BeforeExecute
-- SqlServer.2014 SqlServer.2012

DROP TABLE [SomeOtherEntity]

BeforeExecute
-- SqlServer.2014 SqlServer.2012

DROP TABLE [SomeEntity]

