BeforeExecute
-- SqlCe

DROP TABLE [IsNullOrEmptyTable]

BeforeExecute
-- SqlCe

CREATE TABLE [IsNullOrEmptyTable]
(
	[Id]    Int           NOT NULL,
	[Value] NVarChar(255)     NULL
)

BeforeExecute
-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Value NVarChar(3) -- String
SET     @Value = '   '

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
-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Value NVarChar -- String
SET     @Value = ''

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
-- SqlCe

SELECT
	[p].[Id],
	[p].[Value]
FROM
	[IsNullOrEmptyTable] [p]
WHERE
	LEN(REPLACE([p].[Value],' ','.')) = 0

BeforeExecute
-- SqlCe

DROP TABLE [IsNullOrEmptyTable]

