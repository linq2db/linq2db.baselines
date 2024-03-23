BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[sample_class]', N'U') IS NOT NULL)
	DROP TABLE [sample_class]

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[sample_class]', N'U') IS NULL)
	CREATE TABLE [sample_class]
	(
		[id]    Int          NOT NULL,
		[value] NVarChar(50)     NULL
	)

BeforeExecute
-- SqlServer.2012
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Value NVarChar(50) -- String
SET     @Value = N'Str_1'

INSERT INTO [sample_class]
(
	[id],
	[value]
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- SqlServer.2012
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Value NVarChar(50) -- String
SET     @Value = N'Str_2'

INSERT INTO [sample_class]
(
	[id],
	[value]
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- SqlServer.2012
DECLARE @Id Int -- Int32
SET     @Id = 3
DECLARE @Value NVarChar(50) -- String
SET     @Value = N'Str_3'

INSERT INTO [sample_class]
(
	[id],
	[value]
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- SqlServer.2012
DECLARE @Id Int -- Int32
SET     @Id = 4
DECLARE @Value NVarChar(50) -- String
SET     @Value = N'Str_4'

INSERT INTO [sample_class]
(
	[id],
	[value]
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- SqlServer.2012
DECLARE @Id Int -- Int32
SET     @Id = 5
DECLARE @Value NVarChar(50) -- String
SET     @Value = N'Str_5'

INSERT INTO [sample_class]
(
	[id],
	[value]
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- SqlServer.2012
DECLARE @Id Int -- Int32
SET     @Id = 6
DECLARE @Value NVarChar(50) -- String
SET     @Value = N'Str_6'

INSERT INTO [sample_class]
(
	[id],
	[value]
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- SqlServer.2012
DECLARE @Id Int -- Int32
SET     @Id = 7
DECLARE @Value NVarChar(50) -- String
SET     @Value = N'Str_7'

INSERT INTO [sample_class]
(
	[id],
	[value]
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- SqlServer.2012
DECLARE @Id Int -- Int32
SET     @Id = 8
DECLARE @Value NVarChar(50) -- String
SET     @Value = N'Str_8'

INSERT INTO [sample_class]
(
	[id],
	[value]
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- SqlServer.2012
DECLARE @Id Int -- Int32
SET     @Id = 9
DECLARE @Value NVarChar(50) -- String
SET     @Value = N'Str_9'

INSERT INTO [sample_class]
(
	[id],
	[value]
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- SqlServer.2012
DECLARE @Id Int -- Int32
SET     @Id = 10
DECLARE @Value NVarChar(50) -- String
SET     @Value = N'Str_10'

INSERT INTO [sample_class]
(
	[id],
	[value]
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- SqlServer.2012
DECLARE @Id Int -- Int32
SET     @Id = 11
DECLARE @Value NVarChar(50) -- String
SET     @Value = N'Str_11'

INSERT INTO [sample_class]
(
	[id],
	[value]
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- SqlServer.2012
DECLARE @Id Int -- Int32
SET     @Id = 12
DECLARE @Value NVarChar(50) -- String
SET     @Value = N'Str_12'

INSERT INTO [sample_class]
(
	[id],
	[value]
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- SqlServer.2012
DECLARE @Id Int -- Int32
SET     @Id = 13
DECLARE @Value NVarChar(50) -- String
SET     @Value = N'Str_13'

INSERT INTO [sample_class]
(
	[id],
	[value]
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- SqlServer.2012
DECLARE @Id Int -- Int32
SET     @Id = 14
DECLARE @Value NVarChar(50) -- String
SET     @Value = N'Str_14'

INSERT INTO [sample_class]
(
	[id],
	[value]
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- SqlServer.2012
DECLARE @Id Int -- Int32
SET     @Id = 15
DECLARE @Value NVarChar(50) -- String
SET     @Value = N'Str_15'

INSERT INTO [sample_class]
(
	[id],
	[value]
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- SqlServer.2012
DECLARE @Id Int -- Int32
SET     @Id = 16
DECLARE @Value NVarChar(50) -- String
SET     @Value = N'Str_16'

INSERT INTO [sample_class]
(
	[id],
	[value]
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- SqlServer.2012
DECLARE @Id Int -- Int32
SET     @Id = 17
DECLARE @Value NVarChar(50) -- String
SET     @Value = N'Str_17'

INSERT INTO [sample_class]
(
	[id],
	[value]
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- SqlServer.2012
DECLARE @Id Int -- Int32
SET     @Id = 18
DECLARE @Value NVarChar(50) -- String
SET     @Value = N'Str_18'

INSERT INTO [sample_class]
(
	[id],
	[value]
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- SqlServer.2012
DECLARE @Id Int -- Int32
SET     @Id = 19
DECLARE @Value NVarChar(50) -- String
SET     @Value = N'Str_19'

INSERT INTO [sample_class]
(
	[id],
	[value]
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- SqlServer.2012
DECLARE @Id Int -- Int32
SET     @Id = 20
DECLARE @Value NVarChar(50) -- String
SET     @Value = N'Str_20'

INSERT INTO [sample_class]
(
	[id],
	[value]
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- SqlServer.2012
DECLARE @p BigInt -- Int64
SET     @p = 5

SELECT
	[c_1].[value],
	[c_1].[id]
FROM
	(
		SELECT * FROM
		[sample_class]
		where [id] >= @p and [id] < 14
	) [c_1]
WHERE
	[c_1].[id] > 10
ORDER BY
	[c_1].[id]

BeforeExecute
-- SqlServer.2012
DECLARE @startId Int -- Int32
SET     @startId = 5
DECLARE @endId Int -- Int32
SET     @endId = 14

SELECT
	[t].[value],
	[t].[id]
FROM
	[sample_class] [t]
WHERE
	[t].[id] >= @startId AND [t].[id] < @endId AND [t].[id] > 10
ORDER BY
	[t].[id]

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[sample_class]', N'U') IS NOT NULL)
	DROP TABLE [sample_class]

