-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @ImplicitPropertyRW Integer -- Int32
SET     @ImplicitPropertyRW = 2
DECLARE @ImplicitPropertyRO Integer -- Int32
SET     @ImplicitPropertyRO = 11
DECLARE @Tests_Linq_InterfaceTests_ Integer -- Int32
SET     @Tests_Linq_InterfaceTests_ = 3
DECLARE @Tests_Linq_InterfaceTests Integer -- Int32
SET     @Tests_Linq_InterfaceTests = 22

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
	@Tests_Linq_InterfaceTests_,
	@Tests_Linq_InterfaceTests
)

-- Sybase.Managed Sybase

SELECT TOP 2
	[t1].[Id],
	[t1].[Prop1],
	[t1].[Prop3]
FROM
	[Issue4715Table] [t1]

