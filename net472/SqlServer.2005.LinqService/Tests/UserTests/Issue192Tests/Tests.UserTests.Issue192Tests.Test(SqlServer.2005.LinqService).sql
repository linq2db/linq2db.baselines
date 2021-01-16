BeforeExecute
-- SqlServer.2005

CREATE TABLE [TypeConvertTable]
(
	[Name]      NVarChar(50) NOT NULL,
	[BoolValue] Char         NOT NULL,
	[GuidValue] VarChar(50)      NULL
)

BeforeExecute
-- SqlServer.2005
DECLARE @Name NVarChar(50) -- String
SET     @Name = N'NotVerified'
DECLARE @BoolValue Char(1) -- AnsiStringFixedLength
SET     @BoolValue = N'N'
DECLARE @GuidValue VarChar(50) -- AnsiString
SET     @GuidValue = N'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'

INSERT INTO [TypeConvertTable]
(
	[Name],
	[BoolValue],
	[GuidValue]
)
VALUES
(
	@Name,
	@BoolValue,
	@GuidValue
)

BeforeExecute
-- SqlServer.2005
DECLARE @Name NVarChar(50) -- String
SET     @Name = N'Verified'
DECLARE @BoolValue Char(1) -- AnsiStringFixedLength
SET     @BoolValue = N'Y'
DECLARE @GuidValue VarChar(50) -- AnsiString
SET     @GuidValue = N'a948600d-de21-4f74-8ac2-9516b287076e'

INSERT INTO [TypeConvertTable]
(
	[Name],
	[BoolValue],
	[GuidValue]
)
VALUES
(
	@Name,
	@BoolValue,
	@GuidValue
)

BeforeExecute
-- SqlServer.2005

DROP TABLE [TypeConvertTable]

