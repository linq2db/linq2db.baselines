﻿BeforeExecute
-- SqlCe
DECLARE @Value Int -- Int32
SET     @Value = 10

INSERT INTO [Issue681Table4]
(
	[Value]
)
VALUES
(
	@Value
)

BeforeExecute
-- SqlCe

SELECT @@IDENTITY

