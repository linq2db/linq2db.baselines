BeforeExecute
-- SqlCe

DROP TABLE [SimpleBulkCopyTable]

BeforeExecute
-- SqlCe

CREATE TABLE [SimpleBulkCopyTable]
(
	[Id] Int NOT NULL
)

BeforeExecute
-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 1

INSERT INTO [SimpleBulkCopyTable]
(
	[Id]
)
VALUES
(
	@Id
)

BeforeExecute
-- SqlCe

DROP TABLE [SimpleBulkCopyTable]

