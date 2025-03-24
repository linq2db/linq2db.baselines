﻿BeforeExecute
--  Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @IntEnumNullable Integer -- Int32
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
--  Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @IntEnumNullable Integer -- Int32
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
--  Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[IntEnumNullable]
FROM
	[CreateTableTypes] [t1]
ORDER BY
	[t1].[Id]

