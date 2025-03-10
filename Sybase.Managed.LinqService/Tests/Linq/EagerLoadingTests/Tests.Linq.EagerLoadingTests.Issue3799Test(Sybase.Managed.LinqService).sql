﻿BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Test3799Item') IS NOT NULL)
	DROP TABLE [Test3799Item]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Test3799Item') IS NULL)
	EXECUTE('
		CREATE TABLE [Test3799Item]
		(
			[Id]       Int           NOT NULL,
			[ParentId] Int               NULL,
			[Name]     NVarChar(255) NOT NULL,

			CONSTRAINT [PK_Test3799Item] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @ParentId Integer -- Int32
SET     @ParentId = NULL
DECLARE @Name UniVarChar(4) -- String
SET     @Name = 'root'

INSERT INTO [Test3799Item]
(
	[Id],
	[ParentId],
	[Name]
)
VALUES
(
	@Id,
	@ParentId,
	@Name
)

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @ParentId Integer -- Int32
SET     @ParentId = 1
DECLARE @Name UniVarChar(7) -- String
SET     @Name = 'child 1'

INSERT INTO [Test3799Item]
(
	[Id],
	[ParentId],
	[Name]
)
VALUES
(
	@Id,
	@ParentId,
	@Name
)

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 3
DECLARE @ParentId Integer -- Int32
SET     @ParentId = 2
DECLARE @Name UniVarChar(9) -- String
SET     @Name = 'child 1.1'

INSERT INTO [Test3799Item]
(
	[Id],
	[ParentId],
	[Name]
)
VALUES
(
	@Id,
	@ParentId,
	@Name
)

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 4
DECLARE @ParentId Integer -- Int32
SET     @ParentId = 2
DECLARE @Name UniVarChar(9) -- String
SET     @Name = 'child 1.2'

INSERT INTO [Test3799Item]
(
	[Id],
	[ParentId],
	[Name]
)
VALUES
(
	@Id,
	@ParentId,
	@Name
)

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 5
DECLARE @ParentId Integer -- Int32
SET     @ParentId = 1
DECLARE @Name UniVarChar(7) -- String
SET     @Name = 'child 2'

INSERT INTO [Test3799Item]
(
	[Id],
	[ParentId],
	[Name]
)
VALUES
(
	@Id,
	@ParentId,
	@Name
)

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 6
DECLARE @ParentId Integer -- Int32
SET     @ParentId = 5
DECLARE @Name UniVarChar(9) -- String
SET     @Name = 'child 2.1'

INSERT INTO [Test3799Item]
(
	[Id],
	[ParentId],
	[Name]
)
VALUES
(
	@Id,
	@ParentId,
	@Name
)

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 7
DECLARE @ParentId Integer -- Int32
SET     @ParentId = 5
DECLARE @Name UniVarChar(9) -- String
SET     @Name = 'child 2.1'

INSERT INTO [Test3799Item]
(
	[Id],
	[ParentId],
	[Name]
)
VALUES
(
	@Id,
	@ParentId,
	@Name
)

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Test3799Item') IS NOT NULL)
	DROP TABLE [Test3799Item]

