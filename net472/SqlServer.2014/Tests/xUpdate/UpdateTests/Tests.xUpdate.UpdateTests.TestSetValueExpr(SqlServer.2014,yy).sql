BeforeExecute
-- SqlServer.2014 SqlServer.2012

CREATE TABLE [TextData]
(
	[Id]     Int           NOT NULL,
	[Items1] NVarChar(Max)     NULL,
	[Items2] NVarChar(Max)     NULL
)

BeforeExecute
-- SqlServer.2014 SqlServer.2012

INSERT INTO [TextData]
(
	[Id],
	[Items1],
	[Items2]
)
VALUES
(1,N'T1',N'Z1'),
(2,N'T2',N'Z2')

BeforeExecute
-- SqlServer.2014 SqlServer.2012
DECLARE @str NVarChar(4000) -- String
SET     @str = N'yy'
DECLARE @str_1 NVarChar(4000) -- String
SET     @str_1 = N'yy'
DECLARE @id Int -- Int32
SET     @id = 1

UPDATE
	[_]
SET
	[_].[Items1] += @str,
	[_].[Items2] += @str_1
FROM
	[TextData] [_]
WHERE
	[_].[Id] >= @id

BeforeExecute
-- SqlServer.2014 SqlServer.2012

SELECT 
	[t1].[Id], 
	[t1].[Items1], 
	[t1].[Items2]
FROM
	[TextData] [t1]

BeforeExecute
-- SqlServer.2014 SqlServer.2012

DROP TABLE [TextData]

