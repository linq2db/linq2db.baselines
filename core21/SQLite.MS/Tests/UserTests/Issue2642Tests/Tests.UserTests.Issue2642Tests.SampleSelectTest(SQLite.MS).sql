BeforeExecute
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
DECLARE @AddTime  -- DateTime
SET     @AddTime = '2020-11-23 15:09:55.543'

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
			DateTime([p].[AddTime]) > DateTime(@AddTime)
	) [key_data_result]
		INNER JOIN [EmailAttachments] [detail] ON [key_data_result].[Id] = [detail].[EmailId]

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Now  -- DateTime
SET     @Now = '2020-11-23 15:09:55.544'

SELECT
	[p].[Id],
	[p].[AddTime]
FROM
	[mails] [p]
		INNER JOIN [IIRs] [i] ON [p].[Id] = [i].[Id]
WHERE
	DateTime([p].[AddTime]) > DateTime(@Now)
ORDER BY
	[p].[AddTime]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE [IIRs]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE [EmailAttachments]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE [mails]

