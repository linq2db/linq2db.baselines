-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @Column NVarChar(7) -- String
SET     @Column = 'value=2'
DECLARE @ColumnNullable NVarChar(8) -- String
SET     @ColumnNullable = 'value=33'

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[StringEnumTable] [r]
WHERE
	[r].[Column] = @Column AND [r].[ColumnNullable] = @ColumnNullable

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[StringEnumTable] [r]
WHERE
	[r].[Column] = 'value=2' AND [r].[ColumnNullable] = 'value=33'

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DELETE FROM
	[StringEnumTable] [t1]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Column NVarChar(5) -- String
SET     @Column = 'val=1'
DECLARE @ColumnNullable NVarChar -- String
SET     @ColumnNullable = NULL

INSERT INTO [StringEnumTable]
(
	[Id],
	[Column],
	[ColumnNullable]
)
VALUES
(
	@Id,
	@Column,
	@ColumnNullable
)

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @Column NVarChar(7) -- String
SET     @Column = 'value=2'
DECLARE @ColumnNullable NVarChar(8) -- String
SET     @ColumnNullable = 'value=33'

INSERT INTO [StringEnumTable]
(
	[Id],
	[Column],
	[ColumnNullable]
)
VALUES
(
	@Id,
	@Column,
	@ColumnNullable
)

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[t1].[Id],
	[t1].[Column],
	[t1].[ColumnNullable]
FROM
	[StringEnumTable] [t1]
ORDER BY
	[t1].[Id]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DELETE FROM
	[StringEnumTable] [t1]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Column NVarChar(5) -- String
SET     @Column = 'val=1'
DECLARE @ColumnNullable NVarChar -- String
SET     @ColumnNullable = NULL

INSERT INTO [StringEnumTable]
(
	[Id],
	[Column],
	[ColumnNullable]
)
VALUES
(
	@Id,
	@Column,
	@ColumnNullable
)

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @Column NVarChar(7) -- String
SET     @Column = 'value=2'
DECLARE @ColumnNullable NVarChar(8) -- String
SET     @ColumnNullable = 'value=33'

INSERT INTO [StringEnumTable]
(
	[Id],
	[Column],
	[ColumnNullable]
)
VALUES
(
	@Id,
	@Column,
	@ColumnNullable
)

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[t1].[Id],
	[t1].[Column],
	[t1].[ColumnNullable]
FROM
	[StringEnumTable] [t1]
ORDER BY
	[t1].[Id]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DELETE FROM
	[StringEnumTable] [t1]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Column NVarChar(5) -- String
SET     @Column = 'val=1'
DECLARE @ColumnNullable NVarChar -- String
SET     @ColumnNullable = NULL

INSERT INTO [StringEnumTable]
(
	[Id],
	[Column],
	[ColumnNullable]
)
VALUES
(
	@Id,
	@Column,
	@ColumnNullable
)

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @Column NVarChar(7) -- String
SET     @Column = 'value=2'
DECLARE @ColumnNullable NVarChar(8) -- String
SET     @ColumnNullable = 'value=33'

INSERT INTO [StringEnumTable]
(
	[Id],
	[Column],
	[ColumnNullable]
)
VALUES
(
	@Id,
	@Column,
	@ColumnNullable
)

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[t1].[Id],
	[t1].[Column],
	[t1].[ColumnNullable]
FROM
	[StringEnumTable] [t1]
ORDER BY
	[t1].[Id]

