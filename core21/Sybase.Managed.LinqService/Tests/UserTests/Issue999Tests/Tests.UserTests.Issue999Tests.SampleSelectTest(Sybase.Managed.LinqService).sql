BeforeExecute
-- Sybase.Managed Sybase

CREATE TABLE [User]
(
	[city]      NVarChar(255)     NULL,
	[user_name] NVarChar(255)     NULL,
	[street]    NVarChar(255)     NULL
)

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[u].[city]
FROM
	[User] [u]

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[u].[street]
FROM
	[User] [u]

BeforeExecute
-- Sybase.Managed Sybase

DROP TABLE [User]

