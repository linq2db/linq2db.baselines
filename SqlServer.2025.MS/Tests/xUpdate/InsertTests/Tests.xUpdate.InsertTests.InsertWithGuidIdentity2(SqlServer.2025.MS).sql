﻿BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

DECLARE @GuidID2Output TABLE ([ID] UniqueIdentifier)

INSERT INTO [GuidID2] OUTPUT [INSERTED].[ID]
INTO @GuidID2Output
DEFAULT VALUES

SELECT [ID] FROM @GuidID2Output

