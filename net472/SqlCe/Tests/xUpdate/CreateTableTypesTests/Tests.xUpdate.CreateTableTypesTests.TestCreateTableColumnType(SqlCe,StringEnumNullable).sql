﻿BeforeExecute
-- SqlCe

CREATE TABLE [CreateTableTypes]
(
	[Id]                 Int         NOT NULL,
	[StringEnumNullable] NVarChar(2)     NULL
)

BeforeExecute
-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @StringEnumNullable NVarChar -- String
SET     @StringEnumNullable = NULL

INSERT INTO [CreateTableTypes]
(
	[Id],
	[StringEnumNullable]
)
VALUES
(
	@Id,
	@StringEnumNullable
)

BeforeExecute
-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @StringEnumNullable NVarChar(2) -- String
SET     @StringEnumNullable = '40'

INSERT INTO [CreateTableTypes]
(
	[Id],
	[StringEnumNullable]
)
VALUES
(
	@Id,
	@StringEnumNullable
)

BeforeExecute
-- SqlCe

SELECT 
	[t1].[Id], 
	[t1].[StringEnumNullable]
FROM
	[CreateTableTypes] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlCe

DROP TABLE [CreateTableTypes]

