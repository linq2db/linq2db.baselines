BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [AttributeBase]

BeforeExecute
-- SqlServer.2019

IF (OBJECT_ID(N'[AttributeBase]', N'U') IS NULL)
	CREATE TABLE [AttributeBase]
	(
		[Id] Int NOT NULL,

		CONSTRAINT [PK_AttributeBase] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2019
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
-- SqlServer.2019

DROP TABLE IF EXISTS [AttributeBase]

