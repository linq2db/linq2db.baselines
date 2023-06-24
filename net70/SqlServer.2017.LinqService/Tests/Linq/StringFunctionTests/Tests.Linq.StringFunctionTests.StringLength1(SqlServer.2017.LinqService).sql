BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [IsNullOrEmptyTable]

BeforeExecute
-- SqlServer.2017

IF (OBJECT_ID(N'[IsNullOrEmptyTable]', N'U') IS NULL)
	CREATE TABLE [IsNullOrEmptyTable]
	(
		[Id]    Int            NOT NULL,
		[Value] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2017
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Value NVarChar(4000) -- String
SET     @Value = N'   '

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
-- SqlServer.2017
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Value NVarChar(4000) -- String
SET     @Value = N''

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
-- SqlServer.2017

SELECT
	[p].[Id],
	[p].[Value]
FROM
	[IsNullOrEmptyTable] [p]
WHERE
	LEN(REPLACE([p].[Value],' ','.')) = 0

BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [IsNullOrEmptyTable]

