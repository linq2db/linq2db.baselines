﻿BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

CREATE TABLE [AttributeBase]
(
	[Id] Int NOT NULL,

	CONSTRAINT [PK_AttributeBase] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016
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
-- SqlServer.2016.MS SqlServer.2016

DROP TABLE IF EXISTS [AttributeBase]

