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
-- SqlCe

DROP TABLE [SimpleBulkCopyTable]

