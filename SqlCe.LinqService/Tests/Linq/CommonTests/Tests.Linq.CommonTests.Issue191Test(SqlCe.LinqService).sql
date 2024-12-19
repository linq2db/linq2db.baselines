BeforeExecute
-- SqlCe

DROP TABLE [User]

BeforeExecute
-- SqlCe

CREATE TABLE [User]
(
	[FirstName] NVarChar(255)     NULL,
	[Status]    Int               NULL
)

BeforeExecute
-- SqlCe

SELECT
	[user_1].[FirstName],
	[user_1].[Status]
FROM
	[User] [user_1]
WHERE
	[user_1].[Status] IS NULL

BeforeExecute
-- SqlCe

DROP TABLE [User]

