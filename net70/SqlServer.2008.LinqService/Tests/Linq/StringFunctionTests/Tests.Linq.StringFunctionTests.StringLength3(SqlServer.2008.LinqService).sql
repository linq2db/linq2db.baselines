BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[IsNullOrEmptyTable]', N'U') IS NOT NULL)
	DROP TABLE [IsNullOrEmptyTable]

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[IsNullOrEmptyTable]', N'U') IS NULL)
	CREATE TABLE [IsNullOrEmptyTable]
	(
		[Id]    Int            NOT NULL,
		[Value] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2008
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Value NVarChar(4000) -- String
SET     @Value = N'x   '

INSERT INTO [IsNullOrEmptyTable]
(
	[Id],
	[Value]
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- SqlServer.2008
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Value NVarChar(4000) -- String
SET     @Value = N'xxxx '

INSERT INTO [IsNullOrEmptyTable]
(
	[Id],
	[Value]
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- SqlServer.2008

SELECT
	[p].[Id],
	[p].[Value]
FROM
	[IsNullOrEmptyTable] [p]
WHERE
	LEN(REPLACE([p].[Value],' ','.')) = 4

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[IsNullOrEmptyTable]', N'U') IS NOT NULL)
	DROP TABLE [IsNullOrEmptyTable]

