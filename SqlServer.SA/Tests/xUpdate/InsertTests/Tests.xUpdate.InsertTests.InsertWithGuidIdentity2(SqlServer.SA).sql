﻿BeforeExecute
-- SqlServer.SA SqlServer.2019

DECLARE @GuidID2Output TABLE ([ID] UniqueIdentifier)

INSERT INTO [GuidID2] OUTPUT [INSERTED].[ID]
INTO @GuidID2Output
DEFAULT VALUES

SELECT [ID] FROM @GuidID2Output

