BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	IIF(EXISTS(
		SELECT
			*
		FROM
			[sys].[objects] [o]
		WHERE
			[o].[object_id] = OBJECT_ID(N'dbo.TemporalTest')
	), 1, 0)

BeforeExecute
--  SqlServer.2017


-- ALTER TABLE [dbo].[TemporalTest] SET ( SYSTEM_VERSIONING = OFF)
-- DROP TABLE [dbo].[TemporalTest]
-- DROP TABLE [dbo].[TemporalTestHistory]

					CREATE TABLE dbo.TemporalTest
					(
						[ID]        int NOT NULL PRIMARY KEY CLUSTERED,
						[Name]      nvarchar(100) NOT NULL,
						[StartedOn] datetime2 GENERATED ALWAYS AS ROW START,
						[EndedOn]   datetime2 GENERATED ALWAYS AS ROW END,
						PERIOD FOR SYSTEM_TIME (StartedOn, EndedOn)
					)
					WITH (SYSTEM_VERSIONING = ON (HISTORY_TABLE = dbo.TemporalTestHistory))

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
DECLARE @ID Int -- Int32
SET     @ID = 1
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'Name1'

INSERT INTO [TemporalTest]
(
	[ID],
	[Name]
)
VALUES
(
	@ID,
	@Name
)

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'Name2'
DECLARE @ID Int -- Int32
SET     @ID = 1

UPDATE
	[t1]
SET
	[t1].[Name] = @Name
FROM
	[TemporalTest] [t1]
WHERE
	[t1].[ID] = @ID

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'Name3'
DECLARE @ID Int -- Int32
SET     @ID = 1

UPDATE
	[t1]
SET
	[t1].[Name] = @Name
FROM
	[TemporalTest] [t1]
WHERE
	[t1].[ID] = @ID

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	[t1].[ID],
	[t1].[Name],
	[t1].[StartedOn],
	[t1].[EndedOn]
FROM
	[TemporalTest] FOR SYSTEM_TIME ALL  [t1]
ORDER BY
	[t1].[StartedOn]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	[p].[ID],
	[p].[Name],
	[p].[StartedOn],
	[p].[EndedOn]
FROM
	[TemporalTest] FOR SYSTEM_TIME AS OF '2023-03-01T17:39:11.761' [p]

