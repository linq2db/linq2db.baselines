BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue4160Person') IS NOT NULL)
	DROP TABLE [Issue4160Person]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue4160Person') IS NULL)
	EXECUTE('
		CREATE TABLE [Issue4160Person]
		(
			[Code] NVarChar(255)     NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Code UniVarChar(2) -- String
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
-- Sybase.Managed Sybase
DECLARE @Code UniVarChar(2) -- String
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
-- Sybase.Managed Sybase
DECLARE @Code UniVarChar(2) -- String
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
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue4160City') IS NOT NULL)
	DROP TABLE [Issue4160City]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue4160City') IS NULL)
	EXECUTE('
		CREATE TABLE [Issue4160City]
		(
			[Code] NVarChar(255)     NULL,
			[Name] NVarChar(255)     NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Code UniVarChar(2) -- String
SET     @Code = 'SD'
DECLARE @Name UniVarChar(6) -- String
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
-- Sybase.Managed Sybase
DECLARE @Code UniVarChar(2) -- String
SET     @Code = 'SD'
DECLARE @Name UniVarChar(6) -- String
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
-- Sybase.Managed Sybase
DECLARE @Code UniVarChar(2) -- String
SET     @Code = 'SH'
DECLARE @Name UniVarChar(6) -- String
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
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue4160City') IS NOT NULL)
	DROP TABLE [Issue4160City]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue4160Person') IS NOT NULL)
	DROP TABLE [Issue4160Person]

