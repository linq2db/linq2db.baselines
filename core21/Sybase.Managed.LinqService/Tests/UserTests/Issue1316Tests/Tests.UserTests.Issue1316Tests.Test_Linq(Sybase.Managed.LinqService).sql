BeforeExecute
-- Sybase.Managed Sybase

CREATE TABLE [Issue1316Tests]
(
	[ID] Int NOT NULL,

	CONSTRAINT [PK_Issue1316Tests] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @ID Integer -- Int32
SET     @ID = 5

INSERT INTO [Issue1316Tests]
(
	[ID]
)
VALUES
(
	@ID
)

BeforeExecute
-- Sybase.Managed Sybase

SELECT TOP 2 
	[_].[ID]
FROM
	[Issue1316Tests] [_]
WHERE
	[_].[ID] IN (4, 5, 6)

BeforeExecute
-- Sybase.Managed Sybase

DROP TABLE [Issue1316Tests]

