BeforeExecute
-- SqlServer.2005
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = '193ae7f4-5309-4eee-a746-27b28c7e30f3'

INSERT INTO [TableWithGuid]
(
	[Id]
)
VALUES
(
	@Id
)

BeforeExecute
-- SqlServer.2005

SELECT TOP (1)
	Lower(CAST([t].[Id] AS Char(36)))
FROM
	[TableWithGuid] [t]

BeforeExecute
-- SqlServer.2005

SELECT
	[t].[Id]
FROM
	[TableWithGuid] [t]
WHERE
	Lower(CAST([t].[Id] AS Char(36))) LIKE N'%7f4-53%' ESCAPE N'~'

BeforeExecute
-- SqlServer.2005

SELECT
	[t].[Id]
FROM
	[TableWithGuid] [t]
WHERE
	Lower(CAST([t].[Id] AS Char(36))) LIKE N'193ae%' ESCAPE N'~'

BeforeExecute
-- SqlServer.2005

SELECT
	[t].[Id]
FROM
	[TableWithGuid] [t]
WHERE
	Lower(CAST([t].[Id] AS Char(36))) LIKE N'%8f4-53%' ESCAPE N'~'

BeforeExecute
-- SqlServer.2005

SELECT
	[t].[Id]
FROM
	[TableWithGuid] [t]
WHERE
	Lower(CAST([t].[Id] AS Char(36))) LIKE N'293ae%' ESCAPE N'~'

