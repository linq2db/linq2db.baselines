﻿BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[MainTable]', N'U') IS NOT NULL)
	DROP TABLE [MainTable]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[MainTable]', N'U') IS NULL)
	CREATE TABLE [MainTable]
	(
		[Id]    Int            NOT NULL,
		[Field] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

INSERT INTO [MainTable]
(
	[Id],
	[Field]
)
VALUES
(1,N'value 1'),
(2,N'value 2'),
(3,N'value 3')

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[AssociatedTable]', N'U') IS NOT NULL)
	DROP TABLE [AssociatedTable]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[AssociatedTable]', N'U') IS NULL)
	CREATE TABLE [AssociatedTable]
	(
		[Id] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

INSERT INTO [AssociatedTable]
(
	[Id]
)
VALUES
(1),
(3)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @id Int -- Int32
SET     @id = 3

UPDATE
	[a_MainOptional]
SET
	[a_MainOptional].[Field] = N'test'
FROM
	[MainTable] [_]
		LEFT JOIN [AssociatedTable] [a_AssociatedOptional] ON [_].[Id] = [a_AssociatedOptional].[Id]
		LEFT JOIN [MainTable] [a_MainOptional] ON [a_AssociatedOptional].[Id] = [a_MainOptional].[Id]
WHERE
	[_].[Id] = @id

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Id],
	[t1].[Field]
FROM
	[MainTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[AssociatedTable]', N'U') IS NOT NULL)
	DROP TABLE [AssociatedTable]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[MainTable]', N'U') IS NOT NULL)
	DROP TABLE [MainTable]

