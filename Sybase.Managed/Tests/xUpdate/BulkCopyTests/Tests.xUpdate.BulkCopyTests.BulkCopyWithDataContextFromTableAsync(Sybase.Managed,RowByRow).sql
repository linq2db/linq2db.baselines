-- Sybase.Managed Sybase

INSERT INTO [SimpleBulkCopyTable]
(
	[Id]
)
SELECT 1

-- Sybase.Managed Sybase

INSERT INTO [SimpleBulkCopyTable]
(
	[Id]
)
SELECT 2

-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 3

INSERT INTO [SimpleBulkCopyTable]
(
	[Id]
)
VALUES
(
	@Id
)

-- Sybase.Managed Sybase

INSERT INTO [SimpleBulkCopyTable]
(
	[Id]
)
SELECT 10

-- Sybase.Managed Sybase

INSERT INTO [SimpleBulkCopyTable]
(
	[Id]
)
SELECT 20

-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 30

INSERT INTO [SimpleBulkCopyTable]
(
	[Id]
)
VALUES
(
	@Id
)

