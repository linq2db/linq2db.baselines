-- SqlCe

INSERT INTO [SimpleBulkCopyTable]
(
	[Id]
)
SELECT 1

-- SqlCe

INSERT INTO [SimpleBulkCopyTable]
(
	[Id]
)
SELECT 2

-- SqlCe
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

