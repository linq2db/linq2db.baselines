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
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @OwnerId Integer -- Int32
SET     @OwnerId = 1

INSERT INTO [Dog]
(
	[Id],
	[OwnerId]
)
VALUES
(
	@Id,
	@OwnerId
)

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
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @HouseId Integer -- Int32
SET     @HouseId = 1

INSERT INTO [Human]
(
	[Id],
	[HouseId]
)
VALUES
(
	@Id,
	@HouseId
)

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
DECLARE @Id Integer -- Int32
SET     @Id = 1

INSERT INTO [House]
(
	[Id]
)
VALUES
(
	@Id
)

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
DECLARE @Id Integer -- Int32
SET     @Id = 6
DECLARE @Position Integer -- Int32
SET     @Position = 6

INSERT INTO [Window]
(
	[Id],
	[Position]
)
VALUES
(
	@Id,
	@Position
)

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

