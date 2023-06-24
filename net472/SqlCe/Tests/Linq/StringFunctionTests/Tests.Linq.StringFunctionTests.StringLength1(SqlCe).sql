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

INSERT INTO [IsNullOrEmptyTable]
(
	[Id],
	[Value]
)
SELECT 1,'   ' UNION ALL
SELECT 2,''

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

