BeforeExecute
-- SqlServer.2019 SqlServer.2017

CREATE TABLE [CreateTableTypes]
(
	[Id]              Int NOT NULL,
	[IntEnumNullable] Int     NULL
)

BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @IntEnumNullable Int -- Int32
SET     @IntEnumNullable = NULL

INSERT INTO [CreateTableTypes]
(
	[Id],
	[IntEnumNullable]
)
VALUES
(
	@Id,
	@IntEnumNullable
)

BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @IntEnumNullable Int -- Int32
SET     @IntEnumNullable = 60

INSERT INTO [CreateTableTypes]
(
	[Id],
	[IntEnumNullable]
)
VALUES
(
	@Id,
	@IntEnumNullable
)

BeforeExecute
-- SqlServer.2019 SqlServer.2017

SELECT 
	[t1].[Id], 
	[t1].[IntEnumNullable]
FROM
	[CreateTableTypes] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlServer.2019 SqlServer.2017

DROP TABLE [CreateTableTypes]

