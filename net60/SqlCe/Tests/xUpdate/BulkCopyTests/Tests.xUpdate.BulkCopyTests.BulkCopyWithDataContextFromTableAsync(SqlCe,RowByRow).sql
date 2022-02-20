﻿BeforeExecute
-- SqlCe

CREATE TABLE [SimpleBulkCopyTable]
(
	[Id] Int NOT NULL
)

BeforeExecute
-- SqlCe (asynchronously)

INSERT INTO [SimpleBulkCopyTable]
(
	[Id]
)
SELECT 1

BeforeExecute
-- SqlCe (asynchronously)

INSERT INTO [SimpleBulkCopyTable]
(
	[Id]
)
SELECT 2

BeforeExecute
-- SqlCe (asynchronously)
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

BeforeExecute
-- SqlCe (asynchronously)

INSERT INTO [SimpleBulkCopyTable]
(
	[Id]
)
SELECT 10

BeforeExecute
-- SqlCe (asynchronously)

INSERT INTO [SimpleBulkCopyTable]
(
	[Id]
)
SELECT 20

BeforeExecute
-- SqlCe (asynchronously)
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

BeforeExecute
-- SqlCe

DROP TABLE [SimpleBulkCopyTable]

