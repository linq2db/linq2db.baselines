﻿BeforeExecute
-- Sybase.Managed Sybase
DECLARE @id Integer -- Int32
SET     @id = 1001

INSERT INTO [Child]
(
	[ParentID],
	[ChildID]
)
VALUES
(
	1,
	@id
)

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @id Integer -- Int32
SET     @id = 1001

SELECT
	Count(*)
FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] = @id

