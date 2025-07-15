BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

DECLARE @GuidID2Output TABLE ([ID] UniqueIdentifier)

INSERT INTO [GuidID2] OUTPUT [INSERTED].[ID]
INTO @GuidID2Output
DEFAULT VALUES

SELECT [ID] FROM @GuidID2Output

