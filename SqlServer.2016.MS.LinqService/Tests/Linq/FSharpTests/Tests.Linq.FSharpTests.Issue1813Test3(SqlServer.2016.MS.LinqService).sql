﻿BeforeExecute
--  SqlServer.2016.MS SqlServer.2016
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'name1'

INSERT INTO [Names]
(
	[Id],
	[Name]
)
VALUES
(
	@Id,
	@Name
)

BeforeExecute
--  SqlServer.2016.MS SqlServer.2016
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'name2'

INSERT INTO [Names]
(
	[Id],
	[Name]
)
VALUES
(
	@Id,
	@Name
)

BeforeExecute
--  SqlServer.2016.MS SqlServer.2016
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Text NVarChar(4000) -- String
SET     @Text = N'address'

INSERT INTO [Addresses]
(
	[Id],
	[Text]
)
VALUES
(
	@Id,
	@Text
)

BeforeExecute
--  SqlServer.2016.MS SqlServer.2016

SELECT
	[tupledArg].[Id],
	[tupledArg].[Name],
	[arg2].[Id],
	[arg2].[Text]
FROM
	[Names] [tupledArg]
		LEFT JOIN [Addresses] [arg2] ON [tupledArg].[Id] = [arg2].[Id]
ORDER BY
	[tupledArg].[Id]

