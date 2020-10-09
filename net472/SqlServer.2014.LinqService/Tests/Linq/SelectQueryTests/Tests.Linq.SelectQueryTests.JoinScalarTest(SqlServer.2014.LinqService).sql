BeforeExecute
-- SqlServer.2014 SqlServer.2012

CREATE TABLE [SampleClass]
(
	[Id]    Int NOT NULL,
	[Value] Int NOT NULL
)

BeforeExecute
-- SqlServer.2014 SqlServer.2012
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Value_1 Int -- Int32
SET     @Value_1 = 100

INSERT INTO [SampleClass]
(
	[Id],
	[Value]
)
VALUES
(
	@Id,
	@Value_1
)

BeforeExecute
-- SqlServer.2014 SqlServer.2012

SELECT 
	[t].[Id], 
	[t].[Value], 
	[s].[c1]
FROM
	[SampleClass] [t]
		INNER JOIN ( 
			SELECT 
				1 as [c1]
		) [s] ON [s].[c1] = [t].[Id]

BeforeExecute
-- SqlServer.2014 SqlServer.2012

DROP TABLE [SampleClass]

