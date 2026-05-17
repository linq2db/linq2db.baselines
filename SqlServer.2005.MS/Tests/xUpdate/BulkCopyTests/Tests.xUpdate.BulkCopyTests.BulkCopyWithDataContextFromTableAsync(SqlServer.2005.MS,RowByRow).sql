-- SqlServer.2005.MS SqlServer.2005

INSERT INTO [SimpleBulkCopyTable]
(
	[Id]
)
SELECT 1

-- SqlServer.2005.MS SqlServer.2005

INSERT INTO [SimpleBulkCopyTable]
(
	[Id]
)
SELECT 2

-- SqlServer.2005.MS SqlServer.2005
DECLARE @Id Int -- Int32
SET     @Id = 3

INSERT INTO [SimpleBulkCopyTable]
(
	[Id]
)
VALUES
(
	@Id
)

-- SqlServer.2005.MS SqlServer.2005

INSERT INTO [SimpleBulkCopyTable]
(
	[Id]
)
SELECT 10

-- SqlServer.2005.MS SqlServer.2005

INSERT INTO [SimpleBulkCopyTable]
(
	[Id]
)
SELECT 20

-- SqlServer.2005.MS SqlServer.2005
DECLARE @Id Int -- Int32
SET     @Id = 30

INSERT INTO [SimpleBulkCopyTable]
(
	[Id]
)
VALUES
(
	@Id
)

