﻿BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022 (asynchronously)

INSERT INTO [Person]
(
	[FirstName],
	[LastName],
	[Gender]
)
VALUES
(
	N'John',
	N'The Dynamic',
	N'M'
)

BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022 (asynchronously)

SELECT
	COUNT(*)
FROM
	[Person] [c_1]
WHERE
	[c_1].[FirstName] = N'John' AND [c_1].[LastName] = N'The Dynamic'

