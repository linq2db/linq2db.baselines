BeforeExecute
-- Access AccessOleDb

DROP TABLE [Issue4160Person]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [Issue4160Person]
(
	[Code] NVarChar(255)     NULL
)

BeforeExecute
-- Access AccessOleDb
DECLARE @Code VarWChar(2) -- String
SET     @Code = 'SD'

INSERT INTO [Issue4160Person]
(
	[Code]
)
VALUES
(
	@Code
)

BeforeExecute
-- Access AccessOleDb
DECLARE @Code VarWChar(2) -- String
SET     @Code = 'SD'

INSERT INTO [Issue4160Person]
(
	[Code]
)
VALUES
(
	@Code
)

BeforeExecute
-- Access AccessOleDb
DECLARE @Code VarWChar(2) -- String
SET     @Code = 'SH'

INSERT INTO [Issue4160Person]
(
	[Code]
)
VALUES
(
	@Code
)

BeforeExecute
-- Access AccessOleDb

DROP TABLE [Issue4160City]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [Issue4160City]
(
	[Code] NVarChar(255)     NULL,
	[Name] NVarChar(255)     NULL
)

BeforeExecute
-- Access AccessOleDb
DECLARE @Code VarWChar(2) -- String
SET     @Code = 'SD'
DECLARE @Name VarWChar(6) -- String
SET     @Name = 'SYDNEY'

INSERT INTO [Issue4160City]
(
	[Code],
	[Name]
)
VALUES
(
	@Code,
	@Name
)

BeforeExecute
-- Access AccessOleDb
DECLARE @Code VarWChar(2) -- String
SET     @Code = 'SD'
DECLARE @Name VarWChar(6) -- String
SET     @Name = 'SUNDAY'

INSERT INTO [Issue4160City]
(
	[Code],
	[Name]
)
VALUES
(
	@Code,
	@Name
)

BeforeExecute
-- Access AccessOleDb
DECLARE @Code VarWChar(2) -- String
SET     @Code = 'SH'
DECLARE @Name VarWChar(6) -- String
SET     @Name = 'SYDHIP'

INSERT INTO [Issue4160City]
(
	[Code],
	[Name]
)
VALUES
(
	@Code,
	@Name
)

BeforeExecute
-- Access AccessOleDb

SELECT DISTINCT
	(
		SELECT TOP 1
			[cc].[Name]
		FROM
			[Issue4160City] [cc]
		WHERE
			([cc].[Code] = [pe].[Code] OR [cc].[Code] IS NULL AND [pe].[Code] IS NULL)
	)
FROM
	[Issue4160Person] [pe]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [Issue4160City]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [Issue4160Person]

