BeforeExecute
-- SqlCe

DROP TABLE [Issue4460Table]

BeforeExecute
-- SqlCe

CREATE TABLE [Issue4460Table]
(
	[Id]      Int           NOT NULL,
	[Code]    NVarChar(255)     NULL,
	[Name]    NVarChar(255)     NULL,
	[Surname] NVarChar(255)     NULL
)

BeforeExecute
-- SqlCe

INSERT INTO [Issue4460Table]
(
	[Id],
	[Code],
	[Name],
	[Surname]
)
SELECT 1,'GrandChild','Tom','Black'

BeforeExecute
-- SqlCe

SELECT
	[t1].[Code],
	[t1].[Id],
	[t1].[Name],
	[t1].[Surname]
FROM
	[Issue4460Table] [t1]

BeforeExecute
-- SqlCe

DROP TABLE [Issue4460Table]

