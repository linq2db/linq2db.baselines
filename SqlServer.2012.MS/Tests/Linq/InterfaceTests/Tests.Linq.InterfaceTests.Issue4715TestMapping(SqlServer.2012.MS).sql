BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[Issue4715Table]', N'U') IS NOT NULL)
	DROP TABLE [Issue4715Table]

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[Issue4715Table]', N'U') IS NULL)
	CREATE TABLE [Issue4715Table]
	(
		[Id]    Int NOT NULL,
		[Prop1] Int NOT NULL,
		[Prop2] Int NOT NULL,
		[Prop3] Int NOT NULL,
		[Prop4] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @ImplicitPropertyRW Int -- Int32
SET     @ImplicitPropertyRW = 2
DECLARE @ImplicitPropertyRO Int -- Int32
SET     @ImplicitPropertyRO = 11
DECLARE @Tests_Linq_InterfaceTests_IExplicitInterfaceTests Int -- Int32
SET     @Tests_Linq_InterfaceTests_IExplicitInterfaceTests = 3
DECLARE @Tests_Linq_InterfaceTests_IExplicitInterfaceTest Int -- Int32
SET     @Tests_Linq_InterfaceTests_IExplicitInterfaceTest = 22

INSERT INTO [Issue4715Table]
(
	[Id],
	[Prop1],
	[Prop2],
	[Prop3],
	[Prop4]
)
VALUES
(
	@Id,
	@ImplicitPropertyRW,
	@ImplicitPropertyRO,
	@Tests_Linq_InterfaceTests_IExplicitInterfaceTests,
	@Tests_Linq_InterfaceTests_IExplicitInterfaceTest
)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT TOP (2)
	[t1].[Id],
	[t1].[Prop1],
	[t1].[Prop3]
FROM
	[Issue4715Table] [t1]

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[Issue4715Table]', N'U') IS NOT NULL)
	DROP TABLE [Issue4715Table]

