BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue4715Table') IS NOT NULL)
	DROP TABLE [Issue4715Table]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue4715Table') IS NULL)
	EXECUTE('
		CREATE TABLE [Issue4715Table]
		(
			[Id]    Int NOT NULL,
			[Prop1] Int NOT NULL,
			[Prop2] Int NOT NULL,
			[Prop3] Int NOT NULL,
			[Prop4] Int NOT NULL
		)
	')

BeforeExecute
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

BeforeExecute
-- Sybase.Managed Sybase

SELECT TOP 2
	[t1].[Id],
	[t1].[Prop1],
	[t1].[Prop3]
FROM
	[Issue4715Table] [t1]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue4715Table') IS NOT NULL)
	DROP TABLE [Issue4715Table]

