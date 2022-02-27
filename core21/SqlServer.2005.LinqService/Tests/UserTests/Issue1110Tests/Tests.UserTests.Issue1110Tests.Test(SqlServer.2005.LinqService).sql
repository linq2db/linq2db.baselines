BeforeExecute
-- SqlServer.2005

CREATE TABLE [Issue1110TB]
(
	[Id]        Int      NOT NULL,
	[TimeStamp] DateTime NOT NULL,

	CONSTRAINT [PK_Issue1110TB] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- SqlServer.2005
DECLARE @Id Int -- Int32
SET     @Id = 10
DECLARE @TimeStamp_1 DateTime
SET     @TimeStamp_1 = '2020-02-29T17:54:55.123'

INSERT INTO [Issue1110TB]
(
	[Id],
	[TimeStamp]
)
VALUES
(
	@Id,
	@TimeStamp_1
)

BeforeExecute
-- SqlServer.2005

DROP TABLE [Issue1110TB]

