﻿BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'GuidTable') IS NOT NULL)
	DROP TABLE [GuidTable]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'GuidTable') IS NULL)
	EXECUTE('
		CREATE TABLE [GuidTable]
		(
			[Id]             Int         NOT NULL,
			[Column]         VARCHAR(36) NOT NULL,
			[ColumnNullable] VARCHAR(36)     NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [GuidTable]
(
	[Id],
	[Column],
	[ColumnNullable]
)
SELECT 1,'bc7b663d-0fde-4327-8f92-5d8cc3a11d11',NULL UNION ALL
SELECT 2,'a948600d-de21-4f74-8ac2-9516b287076e','bd3973a5-4323-4dd8-9f4f-df9f93e2a627'

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Column_1 Char(36) -- AnsiStringFixedLength
SET     @Column_1 = 'a948600d-de21-4f74-8ac2-9516b287076e'
DECLARE @ColumnNullable Char(36) -- AnsiStringFixedLength
SET     @ColumnNullable = 'bd3973a5-4323-4dd8-9f4f-df9f93e2a627'

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[GuidTable] [r]
WHERE
	[r].[Column] = @Column_1 AND [r].[ColumnNullable] = @ColumnNullable

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[GuidTable] [r]
WHERE
	[r].[Column] = 'a948600d-de21-4f74-8ac2-9516b287076e' AND
	[r].[ColumnNullable] = 'bd3973a5-4323-4dd8-9f4f-df9f93e2a627'

BeforeExecute
-- Sybase.Managed Sybase

DELETE FROM [GuidTable]
FROM
	[GuidTable] [t1]

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Column_1 Char(36) -- AnsiStringFixedLength
SET     @Column_1 = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'
DECLARE @ColumnNullable Char(36) -- AnsiStringFixedLength
SET     @ColumnNullable = NULL

INSERT INTO [GuidTable]
(
	[Id],
	[Column],
	[ColumnNullable]
)
VALUES
(
	@Id,
	@Column_1,
	@ColumnNullable
)

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Column_1 Char(36) -- AnsiStringFixedLength
SET     @Column_1 = 'a948600d-de21-4f74-8ac2-9516b287076e'
DECLARE @ColumnNullable Char(36) -- AnsiStringFixedLength
SET     @ColumnNullable = 'bd3973a5-4323-4dd8-9f4f-df9f93e2a627'

INSERT INTO [GuidTable]
(
	[Id],
	[Column],
	[ColumnNullable]
)
VALUES
(
	@Id,
	@Column_1,
	@ColumnNullable
)

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[Column],
	[t1].[ColumnNullable]
FROM
	[GuidTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- Sybase.Managed Sybase

DELETE FROM [GuidTable]
FROM
	[GuidTable] [t1]

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [GuidTable]
(
	[Id],
	[Column],
	[ColumnNullable]
)
SELECT 1,'bc7b663d-0fde-4327-8f92-5d8cc3a11d11',NULL UNION ALL
SELECT 2,'a948600d-de21-4f74-8ac2-9516b287076e','bd3973a5-4323-4dd8-9f4f-df9f93e2a627'

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[Column],
	[t1].[ColumnNullable]
FROM
	[GuidTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- Sybase.Managed Sybase

DELETE FROM [GuidTable]
FROM
	[GuidTable] [t1]

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [GuidTable]
(
	[Id],
	[Column],
	[ColumnNullable]
)
SELECT 1,'bc7b663d-0fde-4327-8f92-5d8cc3a11d11',NULL UNION ALL
SELECT 2,'a948600d-de21-4f74-8ac2-9516b287076e','bd3973a5-4323-4dd8-9f4f-df9f93e2a627'

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[Column],
	[t1].[ColumnNullable]
FROM
	[GuidTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'GuidTable') IS NOT NULL)
	DROP TABLE [GuidTable]

