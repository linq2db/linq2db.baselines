﻿BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[InheritanceFilter]', N'U') IS NOT NULL)
	DROP TABLE [InheritanceFilter]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[InheritanceFilter]', N'U') IS NULL)
	CREATE TABLE [InheritanceFilter]
	(
		[Id]                Int NOT NULL,
		[Code]              Int NOT NULL,
		[Child1Field]       Int     NULL,
		[Child2Field]       Int     NULL,
		[Grandchild11Field] Int     NULL,
		[Grandchild12Field] Int     NULL,
		[Grandchild21Field] Int     NULL,
		[Grandchild22Field] Int     NULL,

		CONSTRAINT [PK_InheritanceFilter] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2005
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Code Int -- Int32
SET     @Code = 1
DECLARE @Child1Field Int -- Int32
SET     @Child1Field = 11

INSERT INTO [InheritanceFilter]
(
	[Id],
	[Code],
	[Child1Field]
)
VALUES
(
	@Id,
	@Code,
	@Child1Field
)

BeforeExecute
-- SqlServer.2005
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Code Int -- Int32
SET     @Code = 2
DECLARE @Child2Field Int -- Int32
SET     @Child2Field = 12

INSERT INTO [InheritanceFilter]
(
	[Id],
	[Code],
	[Child2Field]
)
VALUES
(
	@Id,
	@Code,
	@Child2Field
)

BeforeExecute
-- SqlServer.2005
DECLARE @Id Int -- Int32
SET     @Id = 3
DECLARE @Code Int -- Int32
SET     @Code = 11
DECLARE @Child1Field Int -- Int32
SET     @Child1Field = 23
DECLARE @Grandchild11Field Int -- Int32
SET     @Grandchild11Field = 13

INSERT INTO [InheritanceFilter]
(
	[Id],
	[Code],
	[Child1Field],
	[Grandchild11Field]
)
VALUES
(
	@Id,
	@Code,
	@Child1Field,
	@Grandchild11Field
)

BeforeExecute
-- SqlServer.2005
DECLARE @Id Int -- Int32
SET     @Id = 4
DECLARE @Code Int -- Int32
SET     @Code = 12
DECLARE @Child1Field Int -- Int32
SET     @Child1Field = 24
DECLARE @Grandchild12Field Int -- Int32
SET     @Grandchild12Field = 14

INSERT INTO [InheritanceFilter]
(
	[Id],
	[Code],
	[Child1Field],
	[Grandchild12Field]
)
VALUES
(
	@Id,
	@Code,
	@Child1Field,
	@Grandchild12Field
)

BeforeExecute
-- SqlServer.2005
DECLARE @Id Int -- Int32
SET     @Id = 5
DECLARE @Code Int -- Int32
SET     @Code = 21
DECLARE @Child2Field Int -- Int32
SET     @Child2Field = 25
DECLARE @Grandchild21Field Int -- Int32
SET     @Grandchild21Field = 15

INSERT INTO [InheritanceFilter]
(
	[Id],
	[Code],
	[Child2Field],
	[Grandchild21Field]
)
VALUES
(
	@Id,
	@Code,
	@Child2Field,
	@Grandchild21Field
)

BeforeExecute
-- SqlServer.2005
DECLARE @Id Int -- Int32
SET     @Id = 6
DECLARE @Code Int -- Int32
SET     @Code = 22
DECLARE @Child2Field Int -- Int32
SET     @Child2Field = 26
DECLARE @Grandchild22Field Int -- Int32
SET     @Grandchild22Field = 16

INSERT INTO [InheritanceFilter]
(
	[Id],
	[Code],
	[Child2Field],
	[Grandchild22Field]
)
VALUES
(
	@Id,
	@Code,
	@Child2Field,
	@Grandchild22Field
)

BeforeExecute
-- SqlServer.2005

SELECT
	[t1].[Code],
	[t1].[Id],
	[t1].[Child1Field],
	[t1].[Grandchild12Field],
	[t1].[Grandchild11Field]
FROM
	[InheritanceFilter] [t1]
WHERE
	[t1].[Code] IN (11, 12, 1)

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[InheritanceFilter]', N'U') IS NOT NULL)
	DROP TABLE [InheritanceFilter]

