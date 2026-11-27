-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Field1 NVarChar -- String
SET     @Field1 = NULL

INSERT INTO [CustomFieldRecord]
(
	[Id],
	[Field1]
)
VALUES
(
	@Id,
	@Field1
)

-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Field1 NVarChar -- String
SET     @Field1 = NULL

INSERT INTO [CustomFieldRecord]
(
	[Id],
	[Field1]
)
VALUES
(
	@Id,
	@Field1
)

-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 3
DECLARE @Field1 NVarChar(4) -- String
SET     @Field1 = 'test'

INSERT INTO [CustomFieldRecord]
(
	[Id],
	[Field1]
)
VALUES
(
	@Id,
	@Field1
)

-- SqlCe
SELECT
	[t1].[Id],
	[t1].[Field1]
FROM
	[CustomFieldRecord] [t1]
ORDER BY
	[t1].[Id]

