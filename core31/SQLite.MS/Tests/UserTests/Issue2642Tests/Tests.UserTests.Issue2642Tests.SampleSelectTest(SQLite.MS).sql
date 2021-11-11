﻿BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE [mails]
(
	[Id]      INTEGER   NOT NULL,
	[AddTime] DateTime2 NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE [EmailAttachments]
(
	[Id]      INTEGER       NOT NULL,
	[EmailId] INTEGER       NOT NULL,
	[Data]    NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE [IIRs]
(
	[Id] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @DateTime  -- DateTime
SET     @DateTime = '2020-02-29 17:54:55.123'

SELECT
	[key_data_result].[Id],
	[key_data_result].[AddTime],
	[detail].[Id],
	[detail].[EmailId],
	[detail].[Data]
FROM
	(
		SELECT DISTINCT
			[p].[Id],
			[p].[AddTime]
		FROM
			[mails] [p]
				INNER JOIN [IIRs] [i] ON [p].[Id] = [i].[Id]
		WHERE
			DateTime([p].[AddTime]) > DateTime(@DateTime)
	) [key_data_result]
		INNER JOIN [EmailAttachments] [detail] ON [key_data_result].[Id] = [detail].[EmailId]

BeforeExecute
-- SQLite.MS SQLite
DECLARE @DateTime  -- DateTime
SET     @DateTime = '2020-02-29 17:54:55.123'

SELECT
	[p].[Id],
	[p].[AddTime]
FROM
	[mails] [p]
		INNER JOIN [IIRs] [i] ON [p].[Id] = [i].[Id]
WHERE
	DateTime([p].[AddTime]) > DateTime(@DateTime)
ORDER BY
	[p].[AddTime]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [IIRs]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [EmailAttachments]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [mails]

