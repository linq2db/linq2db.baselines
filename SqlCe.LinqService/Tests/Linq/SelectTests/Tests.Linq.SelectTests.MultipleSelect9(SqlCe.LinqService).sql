﻿BeforeExecute
-- SqlCe
DECLARE @Length Int -- Int32
SET     @Length = 2

SELECT
	([p5].[PersonID] * @Length) / 2 as [ID],
	[p5].[FirstName]
FROM
	[Person] [p5]

