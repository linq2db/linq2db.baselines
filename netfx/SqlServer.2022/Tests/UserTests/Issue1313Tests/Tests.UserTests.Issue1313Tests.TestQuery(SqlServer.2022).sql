BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [ValueItem]

BeforeExecute
-- SqlServer.2022

IF (OBJECT_ID(N'[ValueItem]', N'U') IS NULL)
	CREATE TABLE [ValueItem]
	(
		[Value] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2022

INSERT INTO [ValueItem]
(
	[Value]
)
VALUES
(
	123
)

BeforeExecute
-- SqlServer.2022

SELECT
	[row_1].[Value]
FROM
	[ValueItem] [row_1]

BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [ValueItem]

