﻿BeforeExecute
-- SqlServer.2005

CREATE TABLE [AttributeBase]
(
	[Id] Int NOT NULL,

	CONSTRAINT [PK_AttributeBase] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- SqlServer.2005
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
-- SqlServer.2005

DROP TABLE [AttributeBase]

