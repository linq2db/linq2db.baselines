﻿BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [Issue4160Person]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [Issue4160Person]
(
	[Code] NVarChar(255)     NULL
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Code NVarChar(2) -- String
SET     @Code = 'SD'

INSERT INTO [Issue4160Person]
(
	[Code]
)
VALUES
(
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Code NVarChar(2) -- String
SET     @Code = 'SD'

INSERT INTO [Issue4160Person]
(
	[Code]
)
VALUES
(
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Code NVarChar(2) -- String
SET     @Code = 'SH'

INSERT INTO [Issue4160Person]
(
	[Code]
)
VALUES
(
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [Issue4160City]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [Issue4160City]
(
	[Code] NVarChar(255)     NULL,
	[Name] NVarChar(255)     NULL
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Code NVarChar(2) -- String
SET     @Code = 'SD'
DECLARE @Name NVarChar(6) -- String
SET     @Name = 'SYDNEY'

INSERT INTO [Issue4160City]
(
	[Code],
	[Name]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Code NVarChar(2) -- String
SET     @Code = 'SD'
DECLARE @Name NVarChar(6) -- String
SET     @Name = 'SUNDAY'

INSERT INTO [Issue4160City]
(
	[Code],
	[Name]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Code NVarChar(2) -- String
SET     @Code = 'SH'
DECLARE @Name NVarChar(6) -- String
SET     @Name = 'SYDHIP'

INSERT INTO [Issue4160City]
(
	[Code],
	[Name]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [Issue4160City]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [Issue4160Person]

