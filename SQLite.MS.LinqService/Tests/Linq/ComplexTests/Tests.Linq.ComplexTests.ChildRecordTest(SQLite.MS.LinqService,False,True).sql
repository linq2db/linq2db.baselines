BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [Table]
(
	[Id],
	[struct_value1],
	[struct_value2],
	[class_value1],
	[class_value2]
)
VALUES
(
	1,
	5,
	8,
	-4,
	-12
)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[struct_value1],
	[t1].[struct_value2],
	[t1].[class_value1],
	[t1].[class_value2]
FROM
	[Table] [t1]
LIMIT 2

BeforeExecute
-- SQLite.MS SQLite

UPDATE
	[Table]
SET
	[Id] = 1,
	[struct_value1] = 12,
	[struct_value2] = -11,
	[class_value1] = -3,
	[class_value2] = 5

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[struct_value1],
	[t1].[struct_value2],
	[t1].[class_value1],
	[t1].[class_value2]
FROM
	[Table] [t1]
LIMIT 2

