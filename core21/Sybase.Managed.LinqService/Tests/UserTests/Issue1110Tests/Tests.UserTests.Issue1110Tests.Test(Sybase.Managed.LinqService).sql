BeforeExecute
-- Sybase.Managed Sybase

CREATE TABLE [Issue1110TB]
(
	[Id]        Int      NOT NULL,
	[TimeStamp] DateTime NOT NULL,

	CONSTRAINT [PK_Issue1110TB] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 10
DECLARE @TimeStamp_1 DateTime
SET     @TimeStamp_1 = '2020-02-29 17:54:55.123'

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
-- Sybase.Managed Sybase

DROP TABLE [Issue1110TB]

