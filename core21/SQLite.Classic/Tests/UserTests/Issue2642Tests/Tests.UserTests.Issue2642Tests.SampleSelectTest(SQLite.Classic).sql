BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE [mails]
(
	[Id]      INTEGER   NOT NULL,
	[AddTime] DateTime2 NOT NULL
)

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE [EmailAttachments]
(
	[Id]      INTEGER       NOT NULL,
	[EmailId] INTEGER       NOT NULL,
	[Data]    NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE [IIRs]
(
	[Id] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @AddTime  -- DateTime
SET     @AddTime = '2020-11-23 15:01:59.471'

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
-- SQLite.Classic SQLite
DECLARE @Now  -- DateTime
SET     @Now = '2020-11-23 15:01:59.473'

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
-- SQLite.Classic SQLite

DROP TABLE [IIRs]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE [EmailAttachments]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE [mails]

