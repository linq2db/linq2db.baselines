﻿BeforeExecute
INSERT BULK [SimpleBulkCopyTable](Id)

BeforeExecute
INSERT BULK [SimpleBulkCopyTable](Id)

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
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

