BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [Issue4160Person]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

CREATE TABLE [Issue4160Person]
(
	[Code] NVarChar(255)     NULL
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
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
-- Access.Jet.OleDb AccessOleDb
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
-- Access.Jet.OleDb AccessOleDb
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
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [Issue4160City]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

CREATE TABLE [Issue4160City]
(
	[Code] NVarChar(255)     NULL,
	[Name] NVarChar(255)     NULL
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
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
-- Access.Jet.OleDb AccessOleDb
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
-- Access.Jet.OleDb AccessOleDb
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
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [Issue4160City]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [Issue4160Person]

