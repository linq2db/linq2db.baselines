﻿BeforeExecute
-- SqlServer.Contained SqlServer.2017

CREATE TABLE [AttributeBase]
(
	[Id] Int NOT NULL,

	CONSTRAINT [PK_AttributeBase] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- SqlServer.Contained SqlServer.2017
DECLARE @Id Int -- Int32
SET     @Id = 1

INSERT INTO [AttributeBase]
(
	[Id]
)
VALUES
(
	@Id
)

BeforeExecute
-- SqlServer.Contained SqlServer.2017

DROP TABLE IF EXISTS [AttributeBase]

