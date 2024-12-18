BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [TestConstantsData]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

CREATE TABLE [TestConstantsData]
(
	[Id]                Int           NOT NULL,
	[GuidValue]         Guid          NOT NULL,
	[GuidNullableValue] Guid              NULL,
	[StringValue]       NVarChar(255)     NULL,

	CONSTRAINT [PK_TestConstantsData] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @GuidValue Guid
SET     @GuidValue = {guid {bc7b663d-0fde-4327-8f92-5d8cc3a11d11}}
DECLARE @GuidNullableValue Guid
SET     @GuidNullableValue = {guid {bc7b663d-0fde-4327-8f92-5d8cc3a11d11}}
DECLARE @StringValue VarWChar(8) -- String
SET     @StringValue = 'StrValue'

INSERT INTO [TestConstantsData]
(
	[Id],
	[GuidValue],
	[GuidNullableValue],
	[StringValue]
)
VALUES
(
	@Id,
	@GuidValue,
	@GuidNullableValue,
	@StringValue
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @p VarWChar(9) -- String
SET     @p = 'StrValue1'

SELECT
	[e].[Id],
	[e].[GuidValue],
	[e].[GuidNullableValue],
	[e].[StringValue]
FROM
	[TestConstantsData] [e]
WHERE
	[e].[StringValue] + '1' = @p AND [e].[StringValue] IS NOT NULL

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT
	[t1].[Id],
	[t1].[GuidValue],
	[t1].[GuidNullableValue],
	[t1].[StringValue]
FROM
	[TestConstantsData] [t1]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [TestConstantsData]

