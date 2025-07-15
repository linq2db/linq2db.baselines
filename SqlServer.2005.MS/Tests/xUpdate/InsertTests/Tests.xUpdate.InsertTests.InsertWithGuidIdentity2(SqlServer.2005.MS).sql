BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

DECLARE @GuidID2Output TABLE ([ID] UniqueIdentifier)

INSERT INTO [GuidID2] OUTPUT [INSERTED].[ID]
INTO @GuidID2Output
DEFAULT VALUES

SELECT [ID] FROM @GuidID2Output

