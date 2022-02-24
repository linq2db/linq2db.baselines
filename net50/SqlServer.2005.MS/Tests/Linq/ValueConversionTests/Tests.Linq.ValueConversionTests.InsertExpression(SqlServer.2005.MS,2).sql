﻿BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

CREATE TABLE [ValueConversion]
(
	[Id]                      Int           NOT NULL,
	[Value1]                  NVarChar(200)     NULL,
	[Value2]                  NVarChar(200)     NULL,
	[Enum]                    NVarChar(50)  NOT NULL,
	[EnumNullable]            VarChar(50)       NULL,
	[EnumWithNull]            VarChar(50)       NULL,
	[EnumWithNullDeclarative] VarChar(50)       NULL,
	[BoolValue]               VarChar(1)    NOT NULL,
	[AnotherBoolValue]        VarChar(1)    NOT NULL,
	[DateTimeNullable]        DateTime          NULL,

	CONSTRAINT [PK_ValueConversion] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005
DECLARE @iteration Int -- Int32
SET     @iteration = 2
DECLARE @Value1 NVarChar(200) -- String
SET     @Value1 = N'[]'
DECLARE @Enum NVarChar(50) -- String
SET     @Enum = N'Value1'
DECLARE @inserted NVarChar(200) -- String
SET     @inserted = N'[{"Value":"inserted"}]'
DECLARE @boolValue VarChar -- AnsiString
SET     @boolValue = N'Y'
DECLARE @boolValue_1 VarChar -- AnsiString
SET     @boolValue_1 = N'T'

INSERT INTO [ValueConversion]
(
	[Id],
	[Value1],
	[Enum],
	[Value2],
	[BoolValue],
	[AnotherBoolValue]
)
VALUES
(
	@iteration,
	@Value1,
	@Enum,
	@inserted,
	@boolValue,
	@boolValue_1
)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005
DECLARE @take Int -- Int32
SET     @take = 2
DECLARE @iteration Int -- Int32
SET     @iteration = 2

SELECT TOP (@take)
	[e].[Id],
	[e].[Value1],
	[e].[Value2],
	[e].[Enum],
	[e].[EnumNullable],
	[e].[EnumWithNull],
	[e].[EnumWithNullDeclarative],
	[e].[BoolValue],
	[e].[AnotherBoolValue],
	[e].[DateTimeNullable]
FROM
	[ValueConversion] [e]
WHERE
	[e].[Id] = @iteration

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[ValueConversion]', N'U') IS NOT NULL)
	DROP TABLE [ValueConversion]

