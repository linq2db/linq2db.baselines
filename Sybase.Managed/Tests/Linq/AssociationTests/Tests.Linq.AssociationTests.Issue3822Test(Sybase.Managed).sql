BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Dog') IS NOT NULL)
	DROP TABLE [Dog]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Dog') IS NULL)
	EXECUTE('
		CREATE TABLE [Dog]
		(
			[Id]      Int NOT NULL,
			[OwnerId] Int NOT NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [Dog]
(
	[Id],
	[OwnerId]
)
SELECT 1,1

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Human') IS NOT NULL)
	DROP TABLE [Human]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Human') IS NULL)
	EXECUTE('
		CREATE TABLE [Human]
		(
			[Id]      Int NOT NULL,
			[HouseId] Int NOT NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [Human]
(
	[Id],
	[HouseId]
)
SELECT 1,1

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'House') IS NOT NULL)
	DROP TABLE [House]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'House') IS NULL)
	EXECUTE('
		CREATE TABLE [House]
		(
			[Id] Int NOT NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [House]
(
	[Id]
)
SELECT 1

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Window') IS NOT NULL)
	DROP TABLE [Window]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Window') IS NULL)
	EXECUTE('
		CREATE TABLE [Window]
		(
			[Id]       Int NOT NULL,
			[Position] Int NOT NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [Window]
(
	[Id],
	[Position]
)
SELECT 6,6

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Window') IS NOT NULL)
	DROP TABLE [Window]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'House') IS NOT NULL)
	DROP TABLE [House]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Human') IS NOT NULL)
	DROP TABLE [Human]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Dog') IS NOT NULL)
	DROP TABLE [Dog]

