BeforeExecute
-- SqlCe

DROP TABLE [Issue1110TB]

BeforeExecute
-- SqlCe

CREATE TABLE [Issue1110TB]
(
	[Id]        Int      NOT NULL,
	[TimeStamp] DateTime NOT NULL,

	CONSTRAINT [PK_Issue1110TB] PRIMARY KEY ([Id])
)

BeforeExecute
-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 10
DECLARE @TimeStamp DateTime
SET     @TimeStamp = '2020-02-29 17:54:55.123'

INSERT INTO [Issue1110TB]
(
	[Id],
	[TimeStamp]
)
VALUES
(
	@Id,
	@TimeStamp
)

BeforeExecute
-- SqlCe

DROP TABLE [Issue1110TB]

