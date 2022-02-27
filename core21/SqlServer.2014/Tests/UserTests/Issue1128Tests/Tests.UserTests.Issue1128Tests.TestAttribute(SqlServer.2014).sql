﻿BeforeExecute
-- SqlServer.2014

CREATE TABLE [AttributeBase]
(
	[Id] Int NOT NULL,

	CONSTRAINT [PK_AttributeBase] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- SqlServer.2014
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
-- SqlServer.2014

IF (OBJECT_ID(N'[AttributeBase]', N'U') IS NOT NULL)
	DROP TABLE [AttributeBase]

