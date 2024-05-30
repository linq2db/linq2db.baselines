BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[AttributeBase]', N'U') IS NOT NULL)
	DROP TABLE [AttributeBase]

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[AttributeBase]', N'U') IS NULL)
	CREATE TABLE [AttributeBase]
	(
		[Id] Int NOT NULL,

		CONSTRAINT [PK_AttributeBase] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012
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
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[AttributeBase]', N'U') IS NOT NULL)
	DROP TABLE [AttributeBase]

