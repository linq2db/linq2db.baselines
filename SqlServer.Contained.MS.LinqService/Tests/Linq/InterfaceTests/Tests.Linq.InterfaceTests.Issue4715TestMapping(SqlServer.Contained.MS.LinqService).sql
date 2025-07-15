BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
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
-- SqlServer.Contained.MS SqlServer.2019

SELECT TOP (2)
	[t1].[Id],
	[t1].[Prop1],
	[t1].[Prop3]
FROM
	[Issue4715Table] [t1]

