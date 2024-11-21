BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [Issue4715Table]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [Issue4715Table]
(
	[Id]    Int NOT NULL,
	[Prop1] Int NOT NULL,
	[Prop2] Int NOT NULL,
	[Prop3] Int NOT NULL,
	[Prop4] Int NOT NULL
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @ImplicitPropertyRW  -- Int32
SET     @ImplicitPropertyRW = 2
DECLARE @ImplicitPropertyRO  -- Int32
SET     @ImplicitPropertyRO = 11
DECLARE @Tests_Linq_InterfaceTests_IExplicitInterface<Tests_Linq_InterfaceTests_Issue4715Table>_ExplicitPropertyRW  -- Int32
SET     @Tests_Linq_InterfaceTests_IExplicitInterface<Tests_Linq_InterfaceTests_Issue4715Table>_ExplicitPropertyRW = 3
DECLARE @Tests_Linq_InterfaceTests_IExplicitInterface<Tests_Linq_InterfaceTests_Issue4715Table>_ExplicitPropertyRO  -- Int32
SET     @Tests_Linq_InterfaceTests_IExplicitInterface<Tests_Linq_InterfaceTests_Issue4715Table>_ExplicitPropertyRO = 22

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
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT TOP 2
	[t1].[Id],
	[t1].[Prop1],
	[t1].[Prop3]
FROM
	[Issue4715Table] [t1]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [Issue4715Table]

